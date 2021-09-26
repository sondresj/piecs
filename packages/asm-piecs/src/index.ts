import { Archetype } from './Archetype'
import { BitMask } from './BitMask'
import { Query } from './Query'
import { SparseSet } from './SparseSet'

export class World {
    /**
     * [archetype.toString()]: archetype
     */
    private archetypes: Map<string, Archetype> = new Map()
    /**
     * [entity: number]: archetype
     */
    private entityArchetype: Array<Archetype> = new Array()
    private entitiesDeleted: SparseSet = new SparseSet(1<<8)
    private nextEntityId: u32 = 0
    private nextComponentId: u32 = 0

    private queries: Array<Query> = new Array()

    private blankArchetype: Archetype = new Archetype(new BitMask(1))
    private initialized: bool = false

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

    /**
     * Initialize world, invoking the initializer for each registered system
     * @param initialEntityComponents optional array of initial entity components
     * @returns this
     */
    init(): void {
        assert(!this.initialized, 'Attempted to rebuild world, this is not allowed')
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
    hasEntity(entity: u32): bool {
        return !this.entitiesDeleted.has(entity) && !!this.entityArchetype[entity]
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

        const archetype = this.entityArchetype[entity]
        if (!archetype) throw new Error(`Entity ${entity} does not exist`)

        archetype.removeEntity(entity)
        // delete this.entityArchetype[entity]
        this.entitiesDeleted.add(entity)
        return
    }

    hasComponent(entity: u32, componentId: u32): bool {
        const archetype = this.entityArchetype[entity]
        return !!archetype && archetype.hasComponent(componentId)
    }

    setComponent(entity: u32, componentId: u32): void {
        if (this.entitiesDeleted.has(entity)) throw new Error(`Entity ${entity} is deleted`)

        let archetype = this.entityArchetype[entity]
        if (!archetype) throw new Error(`Entity ${entity} does not exist`)

        if (!archetype.hasComponent(componentId)) {
            archetype.removeEntity(entity)
            archetype = archetype.transform(componentId, this.archetypes, this.queries)
            archetype.addEntity(entity)
            this.entityArchetype[entity] = archetype
        }
        return
    }
    // spot the difference between removeComponent and setComponent
    removeComponent(entity: u32, componentId: u32): void {
        if (this.entitiesDeleted.has(entity)) throw new Error(`Entity ${entity} is deleted`)

        let archetype = this.entityArchetype[entity]
        if (!archetype) throw new Error(`Entity ${entity} does not exist`)

        if (archetype.hasComponent(componentId)) {
            archetype.removeEntity(entity)
            archetype = archetype.transform(componentId, this.archetypes, this.queries)
            archetype.addEntity(entity)
            this.entityArchetype[entity] = archetype
        }
        return
    }
}
