import type { Component, InsideWorld, OutsideWorld } from './types'
import type { InternalQuery } from './Query'
import type { System } from './System'
import { createArchetype, InternalArchetype, transformArchetype, traverseArchetypeGraph, Archetype } from './Archetype'
import { createBitSet } from './collections/BitSet'
import { EntityDeletedError, EntityNotExistError, EntityUndefinedError, WorldNotInitializedError } from './Errors'

function getComponentId(component: Component): number {
    return typeof component === 'number' ? component : component.id
}

export class World<TUpdateArguments extends any[] = never> implements OutsideWorld<TUpdateArguments>, InsideWorld {
    private rootArchetype: InternalArchetype = createArchetype('root', createBitSet(8))
    private entityArchetype: InternalArchetype[] = []
    private deletedEntities: number[] = []
    private nextEntityId = 0 >>> 0
    private nextComponentId = 0 >>> 0
    private systems: System<TUpdateArguments>[] = []
    private deferred: (() => void)[] = []
    private initialized = false

    private _executeDeferred() {
        if (this.deferred.length === 0) return

        for (const action of this.deferred) {
            action()
        }
        this.deferred.length = 0
    }

    private _tryAddArchetypeToQueries(archetype: InternalArchetype) {
        const systems = this.systems

        for (let i = 0, l = systems.length; i < l; i++) {
            (systems[i]!.query as InternalQuery).tryAdd(archetype)
        }
    }

    private _assertEntity(entity: number) {
        if (this.entityArchetype[entity] === undefined) {
            if (entity === undefined) {
                throw new EntityUndefinedError()
            } else if (this.deletedEntities.includes(entity)) {
                throw new EntityDeletedError(entity)
            }
            throw new EntityNotExistError(entity)
        }
    }

    private _transformEntityForComponent(current: InternalArchetype, entity: number, componentId: number) {
        current.entitySet.remove(entity)

        if (current.adjacent[componentId] !== undefined) {
            current = current.adjacent[componentId]!
        } else {
            current = transformArchetype(current, componentId)
            if (this.initialized) {
                this._tryAddArchetypeToQueries(current)
            }
        }

        current.entitySet.add(entity)
        this.entityArchetype[entity] = current
    }

    createComponentId() {
        return this.nextComponentId++
    }

    prefabricate<T extends Component>(components: T[]): Archetype {
        const ids = components.map(getComponentId)
        const max = Math.max(...ids)
        if (max >= this.nextComponentId) {
            this.nextComponentId = (max + 1) >>> 0
        }
        let archetype = this.rootArchetype

        for (let i = 0, l = ids.length; i < l; i++) {
            const componentId = ids[i]!

            if (archetype.adjacent[componentId] !== undefined) {
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

    registerSystem(system: System<TUpdateArguments>) {
        this.systems.push(system)

        if (this.initialized) {
            traverseArchetypeGraph(this.rootArchetype, (archetype) => {
                (system.query as InternalQuery).tryAdd(archetype)
                return true
            })
        }

        return this
    }

    initialize() {
        if (this.initialized) return
        this.initialized = true

        traverseArchetypeGraph(this.rootArchetype, arch => this._tryAddArchetypeToQueries(arch))
    }

    update(...args: TUpdateArguments) {
        if (!this.initialized)
            throw new WorldNotInitializedError()

        const systems = this.systems
        for (let s = 0, sl = systems.length; s < sl; s++) {
            const system = systems[s]!
            const archetypes = (system.query as InternalQuery).archetypes
            if (system.type === 1) {
                system.execute(archetypes, this, ...args)
            } else {
                // reverse iterating in case a system adds/removes component resulting in new archetype that matches query for the system
                for (let a = archetypes.length - 1; a >= 0; a--) {
                    const entities = archetypes[a]!.entities
                    system.execute(entities, this, ...args)
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
        this._assertEntity(entity)

        const archetype = this.entityArchetype[entity]!
        archetype.entitySet.remove(entity)
        // much faster than delete operator, but achieves the same (ish)
        // an alternative is to leave it be, and use archetype.entitySet.has(entity) as a check for entity being deleted, but that too is a little slower.
        this.entityArchetype[entity] = undefined as any
        this.deletedEntities.push(entity)
    }

    transformEntity(entity: number, prefabricate: Archetype) {
        this._assertEntity(entity)

        if (this.entityArchetype[entity] === prefabricate) return

        // Transform resets all components on the entity to that of the prefab..
        this.entityArchetype[entity]!.entitySet.remove(entity)
        const archetype = prefabricate as InternalArchetype
        archetype.entitySet.add(entity)
        this.entityArchetype[entity] = archetype
    }

    hasComponent<T extends Component>(entity: number, component: T): boolean {
        return this.entityArchetype[entity] !== undefined
            && this.entityArchetype[entity]!.mask.has(getComponentId(component))
    }

    addComponent<T extends Component>(entity: number, component: T) {
        this._assertEntity(entity)

        const cid = getComponentId(component)
        const archetype = this.entityArchetype[entity]!

        if (!archetype.mask.has(cid)) {
            this._transformEntityForComponent(archetype, entity, cid)
        }
    }

    removeComponent<T extends Component>(entity: number, component: T) {
        this._assertEntity(entity)

        const cid = getComponentId(component)
        const archetype = this.entityArchetype[entity]!

        if (archetype.mask.has(cid)) {
            this._transformEntityForComponent(archetype, entity, cid)
        }
    }
}
