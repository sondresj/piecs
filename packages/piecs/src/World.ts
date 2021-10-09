import type { System, InsideWorld, OutsideWorld } from './types'
import type { InternalQuery, Query } from './Query'
import { createArchetype, InternalArchetype, transformArchetype, traverseArchetypeGraph, Archetype } from './Archetype'
import { createBitSet } from './collections/BitSet'
import { EntityDeletedError, EntityNotExistError, EntityUndefinedError, PrefabricationError, WorldNotInitializedError } from './Errors'

export class World implements OutsideWorld, InsideWorld {
    private rootArchetype: InternalArchetype = createArchetype('root', createBitSet(255), null)
    private entityArchetype: InternalArchetype[] = []
    private deletedEntities: number[] = []
    private nextEntityId = 0 >>> 0
    private nextComponentId = 0 >>> 0

    private systems: System[] = []
    private queries: InternalQuery[] = [] // 1 to 1 with systems

    private deferred: (() => void)[] = []
    private initialized = false

    private _executeDeferred() {
        if (!this.deferred.length) return

        for (const action of this.deferred) {
            action()
        }
        this.deferred.length = 0
    }

    private _tryAddArchetypeToQueries(archetype: InternalArchetype) {
        const queries = this.queries

        for (let i = 0, l = queries.length; i < l; i++) {
            queries[i]!.tryAdd(archetype)
        }
    }

    getNextComponentId() {
        return this.nextComponentId++
    }

    registerSystem(system: System, query: Query) {
        this.systems.push(system)
        this.queries.push(<InternalQuery>query)

        if (this.initialized) {
            traverseArchetypeGraph(this.rootArchetype, (archetype) => {
                (<InternalQuery>query).tryAdd(archetype)
                return true
            })
        }

        return this
    }

    initialize() {
        if (this.initialized) return
        this.initialized = true

        traverseArchetypeGraph(this.rootArchetype, (archetype) => {
            this._tryAddArchetypeToQueries(archetype)
            return true
        })
    }

    /**
     * Update the world, invoking all systems.
     * Typically you want to update each animation frame (@see window.requestAnimationFrame)
     * @returns number of milliseconds that the update took
     */
    update() {
        if (!this.initialized)
            throw new WorldNotInitializedError()

        const systems = this.systems
        const queries = this.queries
        for (let s = 0, sl = systems.length; s < sl; s++) {
            const system = systems[s]!
            const query = queries[s]!
            // reverse iterating in case a system adds/removes component resulting in new archetype that matches query for the system
            for (let a = query.archetypes.length - 1; a >= 0; a--) {
                const entities = (<InternalArchetype[]>query.archetypes)[a]!.entitySet.values
                if (entities.length > 0) {
                    system(entities, this)
                }
            }
        }

        this._executeDeferred()
    }

    /**
     * Defer execution of an action until the end of the update cycle (after all systems has been executed)
     * @param action The action to defer
     * @returns this
     */
    defer(action: () => void) {
        this.deferred.push(action)
    }

    prefabricate(componentIds: number[]): Archetype {
        const max = Math.max(...componentIds)
        if (max >= this.nextComponentId) {
            if (Math.min(...componentIds) < this.nextComponentId) {
                throw new PrefabricationError(componentIds, this.nextComponentId)
            }

            this.nextComponentId = (max + 1) >>> 0
        }
        let archetype = this.rootArchetype

        for (let i = 0, l = componentIds.length; i < l; i++) {
            const componentId = componentIds[i]!

            if (archetype.adjacent[componentId]) {
                archetype = archetype.adjacent[componentId]!
            } else {
                archetype = transformArchetype(archetype, componentId)
                if (this.initialized) {
                    this._tryAddArchetypeToQueries(archetype)
                }
            }
        }
        return archetype
    }

    hasEntity(entity: number): boolean {
        return this.entityArchetype[entity] !== undefined
    }

    createEntity(): number {
        const entity = this.deletedEntities.length > 0
            ? this.deletedEntities.pop()!
            : this.nextEntityId++

        const archetype = this.rootArchetype
        archetype.entitySet.add(entity)
        this.entityArchetype[entity] = archetype
        return entity
    }

    deleteEntity(entity: number) {
        if (this.entityArchetype[entity] === undefined) {
            if (entity === undefined) {
                throw new EntityUndefinedError()
            } else if (this.deletedEntities.includes(entity)) {
                throw new EntityDeletedError(entity)
            }
            throw new EntityNotExistError(entity)
        }

        const archetype = this.entityArchetype[entity]!
        archetype.entitySet.remove(entity)
        // much faster than delete operator, but achieves the same (ish)
        // an alternative is to leave it be, and use archetype.entitySet.has(entity) as a check for entity being deleted, but that too is a little slower.
        this.entityArchetype[entity] = undefined as any
        this.deletedEntities.push(entity)
    }

    /**
     * Transform the entity to that of a prefabricated archetype.
     * Any components added to the entity that does not exist in the prefabricate will be removed.
     * This is a sligthly faster operation than adding/subtracting components
     * @param entity Entity to transform
     * @param prefab Archetype to apply on entity
     * @returns
     */
    transformEntity(entity: number, prefab: Archetype) {
        if (this.entityArchetype[entity] === undefined) {
            if (entity === undefined) {
                throw new EntityUndefinedError()
            } else if (this.deletedEntities.includes(entity)) {
                throw new EntityDeletedError(entity)
            }
            throw new EntityNotExistError(entity)
        }

        if (this.entityArchetype[entity] === prefab) return

        // Transform resets all components on the entity that of the prefab..
        this.entityArchetype[entity]!.entitySet.remove(entity)
        const archetype = prefab as InternalArchetype
        archetype.entitySet.add(entity)
        this.entityArchetype[entity] = archetype
    }

    hasComponentId(entity: number, componentId: number): boolean {
        return this.entityArchetype[entity] !== undefined
            && this.entityArchetype[entity]!.mask.has(componentId)
    }

    addComponentId(entity: number, componentId: number) {
        if (this.entityArchetype[entity] === undefined) {
            if (entity === undefined) {
                throw new EntityUndefinedError()
            } else if (this.deletedEntities.includes(entity)) {
                throw new EntityDeletedError(entity)
            }
            throw new EntityNotExistError(entity)
        }

        let archetype = this.entityArchetype[entity]!

        if (!archetype.mask.has(componentId)) {
            archetype.entitySet.remove(entity)

            if (archetype.adjacent[componentId]) {
                archetype = archetype.adjacent[componentId]!
            } else {
                archetype = transformArchetype(archetype, componentId)
                if (this.initialized) {
                    this._tryAddArchetypeToQueries(archetype)
                }
            }

            archetype.entitySet.add(entity)
            this.entityArchetype[entity] = archetype
        }
    }

    removeComponentId(entity: number, componentId: number) {
        if (this.entityArchetype[entity] === undefined) {
            if (entity === undefined) {
                throw new EntityUndefinedError()
            } else if (this.deletedEntities.includes(entity)) {
                throw new EntityDeletedError(entity)
            }
            throw new EntityNotExistError(entity)
        }

        let archetype = this.entityArchetype[entity]!

        if (archetype.mask.has(componentId)) {
            archetype.entitySet.remove(entity)

            if (archetype.adjacent[componentId]) {
                archetype = archetype.adjacent[componentId]!
            } else {
                archetype = transformArchetype(archetype, componentId)
                if (this.initialized) {
                    this._tryAddArchetypeToQueries(archetype)
                }
            }

            archetype.entitySet.add(entity)
            this.entityArchetype[entity] = archetype
        }
    }
}
