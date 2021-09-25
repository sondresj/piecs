import type { System, InsideWorld, OutsideWorld, InternalWorld } from './types'
import { Archetype } from './Archetype'
import { BitmaskSet } from './collections/BitmaskSet'
import { SparseSet_Array } from './collections/SparseSet'
import { Query } from './Query'
import { VectorComponentSet, ComponentSet, StructComponentSet, FlagComponentSet } from './ComponentSet'
import type { StructValueType } from './collections/StructVector'
import type { VectorValueType } from './collections/Vector'

export class World implements OutsideWorld, InsideWorld, InternalWorld {
    /**
     * [archetype.toString()]: archetype
     */
    private archetypes: Map<string, Archetype> = new Map()//: Record<string, Archetype> = {}
    /**
     * [entity: number]: archetype
     */
    private entityArchetype: Archetype[] = []
    private entitiesDeleted = new SparseSet_Array()
    // private entitiesDeleted = new SparseSet('uint32')
    private nextEntityId = 0
    private nextComponentId = 0

    private systems: System[] = []
    private queries: Query[] = [] // should be 1 to 1 with systems

    private deferredActions: Array<() => void> = []
    private blankArchetype: Archetype = new Archetype(new BitmaskSet(0))
    private initialized = false

    private _executeDeferredActions = () => {
        if (!this.deferredActions.length) return

        for (const action of this.deferredActions) {
            action()
        }
        this.deferredActions.length = 0
    }

    readonly createComponentSet = <T>(
        name: string,
        type: VectorValueType | 'flag' | StructValueType[],
        defaultValue: Readonly<T>
    ): ComponentSet<T> => {
        if (type === 'flag') return new FlagComponentSet(name, type, this.nextComponentId++, this) as any
        if (Array.isArray(type)) return new StructComponentSet(name, type, this.nextComponentId++, defaultValue as never, this) as any
        return new VectorComponentSet(name, type, this.nextComponentId++, defaultValue, this) as any
    }

    readonly registerSystem = (system: System) => {
        if (this.systems.some(sys => sys.name === system.name))
            throw new Error(`System ${system.name} already registered`)
        this.systems.push(system)
        this.queries.push(system.query)

        if (this.initialized) {
            if (system.init) {
                system.init(this)
                // this._executeDeferredActions() // ??
            }
            for (const archetype of this.archetypes.values()) {
                system.query.tryAdd(archetype)
            }
        }

        return this
    }

    /**
     * Initialize world, invoking the initializer for each registered system
     * @param initialEntityComponents optional array of initial entity components
     * @returns this
     */
    readonly init = () => {
        if (this.initialized) {
            console.warn('Attempted to rebuild world, this is not allowed')
            return this
        }
        this.initialized = true

        // create a blank archetype that serves as the base archetype for all entities
        const blankArchetype = new Archetype(new BitmaskSet(this.nextComponentId))
        this.archetypes.set(blankArchetype.id, blankArchetype)
        this.blankArchetype = blankArchetype

        this.systems.forEach(system => {
            if (system.init) {
                system.init(this)
            }
        })

        this.queries.forEach(query => {
            query.tryAdd(blankArchetype)
        })
        this._executeDeferredActions()
        return this
    }

    /**
     * Update the world, invoking all systems.
     * Typically you want to update each animation frame (@see window.requestAnimationFrame)
     * @returns number of milliseconds that the update took
     */
    readonly update = (): this => {
        const systems = this.systems
        const queries = this.queries
        for (let s = 0, sl = systems.length; s < sl; s++) {
            const system = systems[s]!
            const query = queries[s]!
            const archetypes = query.archetypes
            for (let a = 0, al = archetypes.length; a < al; a++) {
                const entities = archetypes[a]!.entities.values
                if (entities.length > 0)
                    system.execute(entities, this)
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
    readonly defer = (action: () => void): this => {
        this.deferredActions.push(action)
        return this
    }

    readonly hasEntity = (entity: number): boolean => {
        return !this.entitiesDeleted.has(entity) && !!this.entityArchetype[entity]
    }

    readonly createEntity = (): number => {
        if (!this.initialized) throw new Error('Not initialized')

        const entity = this.entitiesDeleted.values.length > 0
            ? this.entitiesDeleted.values.pop()!
            : this.nextEntityId++

        const archetype = this.blankArchetype
        archetype.entities.add(entity)
        this.entityArchetype[entity] = archetype
        return entity
    }

    readonly deleteEntity = (entity: number): this => {
        if (this.entitiesDeleted.has(entity)) return this

        const archetype = this.entityArchetype[entity]
        if (!archetype) throw new Error(`Entity ${entity} does not exist`)

        archetype.entities.delete(entity)
        // delete this.entityArchetype[entity]
        this.entitiesDeleted.add(entity)
        return this
    }

    readonly hasComponent = (entity: number, componentId: number): boolean => {
        const archetype = this.entityArchetype[entity]
        return !!archetype && archetype.mask.has(componentId)
    }

    readonly setComponent = (entity: number, componentId: number): this => {
        if (this.entitiesDeleted.has(entity)) throw new Error(`Entity ${entity} is deleted`)

        let archetype = this.entityArchetype[entity]
        if (!archetype) throw new Error(`Entity ${entity} does not exist`)

        if (!archetype.mask.has(componentId)) {
            archetype.entities.delete(entity)
            archetype = archetype._transform(componentId, this.archetypes, this.queries)
            archetype.entities.add(entity)
            this.entityArchetype[entity] = archetype
        }
        return this
    }
    // spot the difference between removeComponent and setComponent
    readonly removeComponent = (entity: number, componentId: number): this => {
        if (this.entitiesDeleted.has(entity)) throw new Error(`Entity ${entity} is deleted`)

        let archetype = this.entityArchetype[entity]
        if (!archetype) throw new Error(`Entity ${entity} does not exist`)

        if (archetype.mask.has(componentId)) {
            archetype.entities.delete(entity)
            archetype = archetype._transform(componentId, this.archetypes, this.queries)
            archetype.entities.add(entity)
            this.entityArchetype[entity] = archetype
        }
        return this
    }
}
