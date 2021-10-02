import { Archetype } from './Archetype'
import { BitMask } from './BitMask'
import { Query } from './Query'
import { SparseSet } from './SparseSet'

export class World {
    private archetypes: Map<string, Archetype> = new Map<string, Archetype>()
    private entityArchetype: Array<Archetype | null> = new Array<Archetype | null>()
    private entitiesDeleted: SparseSet = new SparseSet(1<<8)
    private nextEntityId: u32 = 0
    private nextComponentId: u32 = 0
    private blankArchetype: Archetype = new Archetype(new BitMask(1))
    private initialized: bool = false
    private queries: Array<Query> = new Array()

    getNextComponentId(): u32 {
        return this.nextComponentId++
    }

    registerQuery(query: Query): void {
        this.queries.push(query)

        if (this.initialized) {
            const archetypes = this.archetypes.values()
            const l = archetypes.length
            for (let i = 0; i < l; i++) {
                const archetype = unchecked(archetypes[i])
                query.tryAdd(archetype)
            }
        }
    }

    init(): void {
        assert(!this.initialized, 'Attempted to re-init world, this is not allowed')
        this.initialized = true

        // create a blank archetype that serves as the base archetype for all entities
        const blankArchetype = new Archetype(new BitMask(this.nextComponentId))
        this.archetypes.set(blankArchetype.id, blankArchetype)
        this.blankArchetype = blankArchetype

        const l = this.queries.length
        for (let i = 0; i < l; i++) {
            const query = unchecked(this.queries[i])
            query.tryAdd(blankArchetype)
        }
        return
    }

    @inline
    getEntityArchetype(entity: u32): Archetype | null {
        return entity < <u32> this.entityArchetype.length
            ? this.entityArchetype[entity]
            : null
    }

    @inline
    hasEntity(entity: u32): bool {
        return !this.entitiesDeleted.has(entity) && this.getEntityArchetype(entity) != null
    }

    createEntity(): u32 {
        if (!this.initialized) throw new Error('Not initialized')

        const entity = this.entitiesDeleted.length > 0
            ? this.entitiesDeleted.pop()
            : this.nextEntityId++

        const archetype = this.blankArchetype
        archetype.addEntity(entity)
        this.entityArchetype[entity] = archetype
        return entity
    }

    deleteEntity(entity: u32): void {
        if (this.entitiesDeleted.has(entity)) return

        const archetype = this.getEntityArchetype(entity)
        if (!archetype) throw new Error(`Entity ${entity} does not exist`)

        archetype.removeEntity(entity)
        this.entitiesDeleted.add(entity)
        return
    }

    @inline
    hasComponent(entity: u32, componentId: u32): bool {
        const archetype = this.getEntityArchetype(entity)
        return archetype != null && archetype.hasComponent(componentId)
    }

    setComponent(entity: u32, componentId: u32): void {
        if (this.entitiesDeleted.has(entity)) throw new Error(`Entity ${entity} is deleted`)

        const archetype = this.getEntityArchetype(entity)
        if (!archetype) throw new Error(`Entity ${entity} does not exist`)

        if (!archetype.hasComponent(componentId)) {
            this._transformEntity(archetype, entity, componentId)
        }
        return
    }

    removeComponent(entity: u32, componentId: u32): void {
        if (this.entitiesDeleted.has(entity)) throw new Error(`Entity ${entity} is deleted`)

        const archetype = this.getEntityArchetype(entity)
        if (!archetype) throw new Error(`Entity ${entity} does not exist`)

        if (archetype.hasComponent(componentId) == true) {
            this._transformEntity(archetype, entity, componentId)
        }
        return
    }

    @inline
    private _transformEntity(archetype: Archetype, entity: u32, componentId: u32): void {
        archetype.removeEntity(entity)
        archetype = archetype.transform(componentId, this.archetypes, this.queries)
        archetype.addEntity(entity)
        this.entityArchetype[entity] = archetype
    }
}
