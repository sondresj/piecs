import type { Component, InsideWorld, OutsideWorld } from './types'
import type { InternalQuery } from './Query'
import type { System } from './System'
import { createArchetype, InternalArchetype, transformArchetype, traverseArchetypeGraph, Archetype } from './Archetype'
import { createBitSet } from './collections/BitSet'
import { EntityDeletedError, EntityNotExistError, EntityUndefinedError, WorldNotInitializedError } from './Errors'

export class World implements OutsideWorld, InsideWorld {
    private rootArchetype: InternalArchetype = createArchetype('root', createBitSet(255), null)
    private entityArchetype: InternalArchetype[] = []
    private deletedEntities: number[] = []
    private nextEntityId = 0 >>> 0
    private nextComponentId = 0 >>> 0
    private systems: System[] = []
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
        const systems = this.systems

        for (let i = 0, l = systems.length; i < l; i++) {
            (<InternalQuery>systems[i]!.query).tryAdd(archetype)
        }
    }

    createComponentId() {
        return this.nextComponentId++
    }

    prefabricate<T extends Component>(components: T[]): Archetype {
        const ids = components.map(c => typeof c === 'number' ? c : c.id)
        const max = Math.max(...ids)
        if (max >= this.nextComponentId) {
            this.nextComponentId = (max + 1) >>> 0
        }
        let archetype = this.rootArchetype

        for (let i = 0, l = ids.length; i < l; i++) {
            const componentId = ids[i]!

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

    registerSystem(system: System) {
        this.systems.push(system)

        if (this.initialized) {
            traverseArchetypeGraph(this.rootArchetype, (archetype) => {
                (<InternalQuery>system.query).tryAdd(archetype)
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

    update() {
        if (!this.initialized)
            throw new WorldNotInitializedError()

        const systems = this.systems
        for (let s = 0, sl = systems.length; s < sl; s++) {
            const system = systems[s]!
            const query = system.query as InternalQuery
            if (system.type === 1) {
                system.execute(query.archetypes, this)
            } else {
                // reverse iterating in case a system adds/removes component resulting in new archetype that matches query for the system
                for (let a = query.archetypes.length - 1; a >= 0; a--) {
                    const entities = query.archetypes[a]!.entitySet.values
                    if (entities.length > 0) {
                        system.execute(entities, this)
                    }
                }
            }
        }

        this._executeDeferred()
    }

    defer(action: () => void) {
        this.deferred.push(action)
    }

    hasEntity(entity: number): boolean {
        return this.entityArchetype[entity] !== undefined
    }

    createEntity(prefabricate: Archetype = this.rootArchetype): number {
        const entity = this.deletedEntities.length > 0
            ? this.deletedEntities.pop()!
            : this.nextEntityId++

        const archetype = prefabricate as InternalArchetype
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

        // Transform resets all components on the entity to that of the prefab..
        this.entityArchetype[entity]!.entitySet.remove(entity)
        const archetype = prefab as InternalArchetype
        archetype.entitySet.add(entity)
        this.entityArchetype[entity] = archetype
    }

    hasComponent<T extends Component>(entity: number, component: T): boolean {
        const cid = typeof component === 'number' ? component : component.id
        return this.entityArchetype[entity] !== undefined
            && this.entityArchetype[entity]!.mask.has(cid)
    }

    addComponent<T extends Component>(entity: number, component: T) {
        if (this.entityArchetype[entity] === undefined) {
            if (entity === undefined) {
                throw new EntityUndefinedError()
            } else if (this.deletedEntities.includes(entity)) {
                throw new EntityDeletedError(entity)
            }
            throw new EntityNotExistError(entity)
        }

        const cid = typeof component === 'number' ? component : component.id
        let archetype = this.entityArchetype[entity]!

        if (!archetype.mask.has(cid)) {
            archetype.entitySet.remove(entity)

            if (archetype.adjacent[cid]) {
                archetype = archetype.adjacent[cid]!
            } else {
                archetype = transformArchetype(archetype, cid)
                if (this.initialized) {
                    this._tryAddArchetypeToQueries(archetype)
                }
            }

            archetype.entitySet.add(entity)
            this.entityArchetype[entity] = archetype
        }
    }

    removeComponent<T extends Component>(entity: number, component: T) {
        if (this.entityArchetype[entity] === undefined) {
            if (entity === undefined) {
                throw new EntityUndefinedError()
            } else if (this.deletedEntities.includes(entity)) {
                throw new EntityDeletedError(entity)
            }
            throw new EntityNotExistError(entity)
        }

        const cid = typeof component === 'number' ? component : component.id
        let archetype = this.entityArchetype[entity]!

        if (archetype.mask.has(cid)) {
            archetype.entitySet.remove(entity)

            if (archetype.adjacent[cid]) {
                archetype = archetype.adjacent[cid]!
            } else {
                archetype = transformArchetype(archetype, cid)
                if (this.initialized) {
                    this._tryAddArchetypeToQueries(archetype)
                }
            }

            archetype.entitySet.add(entity)
            this.entityArchetype[entity] = archetype
        }
    }
}
