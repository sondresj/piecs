import { Archetype } from './Archetype'
import { BitMask } from './BitMask'
import { Query } from './Query'
import { RelativeIndexable } from './RelativeIndexable'
import { SparseSet } from './SparseSet'

export abstract class InsideWorld {
    abstract hasEntity(entity: u32): bool
    abstract createEntity(): u32
    abstract deleteEntity(entity: u32): void
    abstract defer(action: () => void): void
}

type System = (entities: RelativeIndexable<u32>, world: InsideWorld) => void
export class World extends InsideWorld {
    /**
     * [archetype.toString()]: archetype
     */
    private archetypes: Map<string, Archetype> = new Map()
    /**
     * [entity: number]: archetype
     */
    private entityArchetype: Archetype[] = []
    private entitiesDeleted: SparseSet = new SparseSet(1<<8)
    private nextEntityId: u32 = 0
    private nextComponentId: u32 = 0

    private systems: Array<System> = new Array()
    private queries: Array<Query> = new Array() // should be 1 to 1 with systems

    private deferredActions: Array<() => void> = []
    private blankArchetype: Archetype = new Archetype(new BitMask(1))
    private initialized: bool = false

    @inline
    _executeDeferredActions(): void {
        if (!this.deferredActions.length) return

        for (let i = 0; i < this.deferredActions.length; i++) {
            unchecked(this.deferredActions[i])()
        }
        this.deferredActions.length = 0
    }

    getNextComponentId(): u32 {
        return this.nextComponentId++
    }

    registerSystem(system: System, query: Query): this {
        this.systems.push(system)
        this.queries.push(query)

        if (this.initialized) {
            const archetypes: Array<Archetype> = this.archetypes.values()
            for (let i = 0; i < archetypes.length; i++) {
                const archetype = unchecked(archetypes[i])
                const query = unchecked(this.queries[i])
                query.tryAdd(archetype)
            }
        }

        return this
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

        for (let i = 0; i < this.queries.length; i++) {
            const query = unchecked(this.queries[i])
            query.tryAdd(blankArchetype)
        }
        this._executeDeferredActions()
        return
    }

    /**
     * Update the world, invoking all systems.
     * Typically you want to update each animation frame (@see window.requestAnimationFrame)
     */
    update(): this {
        const systems: System[] = this.systems
        const queries: Query[] = this.queries
        for (let s = 0, sl = systems.length; s < sl; s++) {
            const system = unchecked(systems[s])
            const query = unchecked(queries[s])
            for (let a = 0, al = query.length; a < al; a++) {
                const archetype = unchecked(query[a])
                if (archetype.length > 0){
                    system(archetype.entities, this)
                }
            }
        }

        this._executeDeferredActions()
        return this
    }

    /**
     * Defer execution of an action until the end of the update cycle (after all systems has been executed)
     * @param action The action to defer
     * @returns this
     */
    @inline
    defer(action: () => void): void {
        this.deferredActions.push(action)
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
