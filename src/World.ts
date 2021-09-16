import type { System, BoundWorld } from './types'
import { Archetype } from './Archetype'
import { BitMask } from './collections/Bitmask'
import { SparseSet_Array } from './collections/SparseSet'
import { CompiledQuery } from './Query'
import { timer } from './utils'
import { ArrayType } from './collections/types'
import { ComponentSet } from './ComponentSet'

export class World implements BoundWorld {
    /**
     * [archetype.toString()]: archetype
     */
    private archetypes: Record<string, Archetype> = {}
    /**
     * [entity: number]: archetype
     */
    private entityArchetypeIds: Record<number, string> = {}
    private entitiesDeleted = new SparseSet_Array()
    // private entitiesKilled = new SparseSet('uint32')
    private nextEntityId = 0
    private nextComponentid = 0

    private systems: System<any>[] = []
    /**
     * [system.name]: CompiledQuery(system.query)
     */
    private systemQueries: Map<string, CompiledQuery> = new Map()

    private deferredActions: Array<() => void> = []
    private lastElapsed = 0
    private BLANK_ARCHETYPE_ID = ''
    private initialized = false

    readonly createComponentSet = <T>(
        name: string,
        type: T extends number ? Exclude<ArrayType, 'any'> : Extract<ArrayType, 'any'>,
        defaultValue: T
    ): ComponentSet<T> => {
        if (this.initialized) {
            throw new Error('Cannot create new components after init')
        }
        return new ComponentSet(name, type, this.nextComponentid++, defaultValue, this)
    }

    readonly registerSystem = <TC extends InstanceType<typeof ComponentSet>>(system: System<TC>) => {
        if (this.systemQueries.has(system.name))
            throw new Error(`System ${system.name} already registered`)
        this.systems.push(system)
        this.systemQueries.set(system.name, new CompiledQuery(system.query))
        if (this.initialized && system.init) {
            system.init(this)
            this._executeDeferredActions()
        }
        return this
    }

    /**
     * Initialize world, invoking the initializer for each registered system
     * @param initialEntityComponents optional array of initial entity components
     * @returns this
     */
    readonly init = (): this => {
        if (this.initialized) {
            throw new Error('Already initialized')
        }
        this.initialized = true

        // create a blank archetype that serves as the base archetype for all entities
        const blankArchetype = new Archetype(new BitMask(this.nextComponentid))
        this.archetypes[blankArchetype.id] = blankArchetype
        this.BLANK_ARCHETYPE_ID = blankArchetype.id

        this.systems.forEach(system => {
            if (system.init) {
                system.init(this)
            }
        })
        this._executeDeferredActions()
        return this
    }

    /**
     * Update the world, invoking all systems.
     * Typically you want to update each animation frame (@see window.requestAnimationFrame)
     * @returns number of milliseconds that the update took
     */
    readonly update = (): number => {
        const getElapsed = timer(this.lastElapsed)
        const dt = getElapsed()
        this.systems.forEach(system => {
            const query = this.systemQueries.get(system.name)!
            system.execute(query.forEach, this, dt)
        })

        this._executeDeferredActions()

        const totalElapsed = getElapsed()
        const executionTime = totalElapsed + this.lastElapsed
        this.lastElapsed = totalElapsed
        return executionTime
    }

    private _assertHasEntity = (entity: number) => {
        if (this.entitiesDeleted.has(entity)) {
            throw new Error(`Entity ${entity} is dead`)
        }
        if (!this.entityArchetypeIds[entity])
            throw new Error(`Entity ${entity} does not exist`)
    }

    private _defer = (action: () => void) => {
        this.deferredActions.push(action)
    }

    private _executeDeferredActions = () => {
        if (!this.deferredActions.length) return

        for (const action of this.deferredActions) {
            action()
        }
        this.deferredActions.length = 0
    }

    private _getEntityArchetype = (entity: number): Archetype => {
        this._assertHasEntity(entity)
        const archetypeId = this.entityArchetypeIds[entity]!
        return this.archetypes[archetypeId]!
    }

    private _setEntityArchetype = (entity: number, archetype: Archetype) => {
        this.archetypes[archetype.id] = archetype
        this.entityArchetypeIds[entity] = archetype.id
    }

    private _getNextEntityId = () => {
        return this.entitiesDeleted.length > 0
            ? this.entitiesDeleted.pop()!
            : this.nextEntityId++
    }

    private _addEntity = (id: number) => {
        const archetype = this.archetypes[this.BLANK_ARCHETYPE_ID]!
        archetype.addEntity(id)
        this._setEntityArchetype(id, archetype)
    }

    readonly hasEntity = (entity: number): boolean => {
        return !this.entitiesDeleted.has(entity) && !!this.entityArchetypeIds[entity]
    }

    readonly createEntity = (defer = false): number => {
        if (!this.initialized)
            throw new Error('Not initialized')
        const id = this._getNextEntityId()
        if (defer) {
            this._defer(() => this._addEntity(id))
        } else {
            this._addEntity(id)
        }
        return id
    }

    readonly deleteEntity = (entity: number, defer = false): this => {
        if (defer) {
            this._defer(() => this._deleteEntityImmediate(entity))
            return this
        }
        return this._deleteEntityImmediate(entity)
    }

    private _deleteEntityImmediate = (entity: number): this => {
        const archetype = this._getEntityArchetype(entity)
        archetype.removeEntity(entity)
        this.entitiesDeleted.add(entity)
        return this
    }

    readonly hasComponent = (entity: number, componentId: number): boolean => {
        const archetype = this._getEntityArchetype(entity)
        return archetype.hasComponent(componentId)
    }

    readonly setComponent = (
        entity: number,
        componentId: number,
        defer = false
    ): this => {
        if (defer) {
            this._assertHasEntity(entity)
            this._defer(() => this._setComponentImmediate(entity, componentId))
            return this
        }
        return this._setComponentImmediate(entity, componentId)
    }

    private _setComponentImmediate = (
        entity: number,
        componentId: number
    ): this => {
        let archetype = this._getEntityArchetype(entity)

        if (!archetype.hasComponent(componentId)) {
            archetype = archetype
                .removeEntity(entity)
                .transform(componentId, this.archetypes)
                .addEntity(entity)
            this._setEntityArchetype(entity, archetype)
            for (const query of this.systemQueries.values()) {
                query.tryAddMatch(archetype)
            }
        }

        return this
    }

    readonly removeComponent = (entity: number, componentId: number, defer = false): this => {
        if (defer) {
            this._defer(() => this._removeComponentImmediate(entity, componentId))
            return this
        }
        return this._removeComponentImmediate(entity, componentId)
    }

    private _removeComponentImmediate = (entity: number, componentId: number): this => {
        const archetype = this._getEntityArchetype(entity)
            .removeEntity(entity)
            .transform(componentId, this.archetypes)
            .addEntity(entity)
        this._setEntityArchetype(entity, archetype)
        return this
    }
}
