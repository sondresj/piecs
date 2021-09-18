import type { System, InsideWorld, IBuildWorld, OutsideWorld, InternalWorld } from './types'
import { Archetype } from './Archetype'
import { BitMask } from './collections/Bitmask'
import { SparseSet_Array } from './collections/SparseSet'
import { CompiledQuery } from './Query'
import { timer } from './utils'
import { ComponentSet, ComponentType } from './ComponentSet'

// const _sysCQ = Symbol('_sysCQ')
// type SystemWithCompiledQuery = System<any> & { [_sysCQ]: CompiledQuery }

export class World implements IBuildWorld, OutsideWorld, InsideWorld, InternalWorld {
    /**
     * [archetype.toString()]: archetype
     */
    private archetypes: Map<string, Archetype> = new Map()//: Record<string, Archetype> = {}
    /**
     * [entity: number]: archetype
     */
    private entityArchetype: Archetype[] = []//Map<number, string> = new Map()//: Record<number, string> = {}
    private entitiesDeleted = new SparseSet_Array()
    // private entitiesDeleted = new SparseSet('uint32')
    private nextEntityId = 0
    private nextComponentid = 0

    private systems: System<any>[] = []
    private queries: CompiledQuery[] = [] // should be 1 to 1 with systems

    private deferredActions: Array<() => void> = []
    private lastElapsed = 0
    private BLANK_ARCHETYPE: Archetype = new Archetype(new BitMask())
    private initialized = false

    // Builder
    readonly createComponentSet = <T>(
        name: string,
        type: ComponentType<T>,
        defaultValue: T
    ): ComponentSet<T> => {
        return new ComponentSet(name, type, this.nextComponentid++, defaultValue, this)
    }

    readonly registerSystem = <TC extends InstanceType<typeof ComponentSet>>(system: System<TC>) => {
        if (this.systems.some(sys => sys.name === system.name))
            throw new Error(`System ${system.name} already registered`)
        const compiledQuery = new CompiledQuery(system.query)
        this.systems.push(system)
        this.queries.push(compiledQuery)

        if (this.initialized) {
            if (system.init) {
                system.init(this)
                // this._executeDeferredActions() // ??
            }
            for (const archetype of this.archetypes.values()) {
                if (compiledQuery.matches(archetype))
                    compiledQuery.archetypes.push(archetype)
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
        const blankArchetype = new Archetype(new BitMask(this.nextComponentid))
        this.archetypes.set(blankArchetype.id, blankArchetype)
        this.BLANK_ARCHETYPE = blankArchetype

        this.systems.forEach(system => {
            if (system.init) {
                system.init(this)
            }
        })

        this.queries.forEach(query => {
            if (query.matches(blankArchetype)) {
                query.archetypes.push(blankArchetype)
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
        const systems = this.systems
        const queries = this.queries
        for (let s = 0, sl = systems.length; s < sl; s++) {
            const system = systems[s]!
            const query = queries[s]!
            const archetypes = query.archetypes
            for (let a = 0, al = archetypes.length; a < al; a++) {
                const entities = archetypes[a]!.entities.toArray()
                if (entities.length > 0)
                    system.execute(entities, this, dt)
            }
        }

        this._executeDeferredActions()

        const totalElapsed = getElapsed()
        const executionTime = totalElapsed + this.lastElapsed
        this.lastElapsed = totalElapsed
        return executionTime
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

    readonly hasEntity = (entity: number): boolean => {
        return !this.entitiesDeleted.has(entity) && !!this.entityArchetype[entity]
    }

    readonly createEntity = (defer = false): number => {
        if (!this.initialized)
            throw new Error('Not initialized')

        const entity = this.entitiesDeleted.length > 0
            ? this.entitiesDeleted.pop()!
            : this.nextEntityId++

        if (defer) {
            this._defer(() => {
                const archetype = this.BLANK_ARCHETYPE
                archetype.entities.add(entity)
                this.entityArchetype[entity] = archetype
            })
        } else {
            const archetype = this.BLANK_ARCHETYPE
            archetype.entities.add(entity)
            this.entityArchetype[entity] = archetype
        }
        return entity
    }

    readonly deleteEntity = (entity: number, defer = false): this => {
        if (defer) {
            this._defer(() => {
                if (this.entitiesDeleted.has(entity) && !this.entityArchetype[entity]) return // could have been deleted by another system without defer
                this._deleteEntity(entity)
            })
            return this
        }
        if (this.entitiesDeleted.has(entity)) throw new Error(`Entity ${entity} is deleted`)
        if (!this.entityArchetype[entity]) throw new Error(`Entity ${entity} does not exist`)

        return this._deleteEntity(entity)
    }

    private _deleteEntity = (entity: number): this => {
        this.entityArchetype[entity]!.entities.delete(entity)
        delete this.entityArchetype[entity]
        this.entitiesDeleted.add(entity)
        return this
    }

    readonly hasComponent = (entity: number, componentId: number): boolean => {
        const archetype = this.entityArchetype[entity]
        return !!archetype && archetype.mask.has(componentId)
    }

    readonly setComponent = (
        entity: number,
        componentId: number,
        defer = false
    ): this => {
        if (defer) {
            this._defer(() => {
                let archetype = this.entityArchetype[entity]
                if (this.entitiesDeleted.has(entity) || !archetype) return // entity may have been deleted while this action was deferred
                if (!archetype.mask.has(componentId)) {
                    archetype.entities.delete(entity)
                    archetype = archetype._transform(componentId, this.archetypes, this.queries)
                    archetype.entities.add(entity)
                    this.entityArchetype[entity] = archetype
                }
            })
            return this
        }

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

    readonly removeComponent = (entity: number, componentId: number, defer = false): this => {
        if (defer) {
            this._defer(() => {
                if (this.entitiesDeleted.has(entity) || !this.entityArchetype[entity]) return // entity may have been deleted while this action was deferred
                this._removeComponent(entity, componentId)
            })
            return this
        }

        if (this.entitiesDeleted.has(entity)) throw new Error(`Entity ${entity} is deleted`)
        if (!this.entityArchetype[entity]) throw new Error(`Entity ${entity} does not exist`)

        this._removeComponent(entity, componentId)
        return this
    }

    private _removeComponent = (entity: number, componentId: number) => {
        let archetype = this.entityArchetype[entity]!
        if (archetype.mask.has(componentId)) {
            archetype.entities.delete(entity)
            archetype = archetype._transform(componentId, this.archetypes, this.queries)
            archetype.entities.add(entity)
            this.entityArchetype[entity] = archetype
        }
    }
}
