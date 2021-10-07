import type { System, InsideWorld, OutsideWorld, WorldEventType, WorldEventHandler } from './types'
import { InternalQuery, Query, queryTryAdd } from './Query'
import { Archetype, createArchetype, InternalArchetype, traverseArchetypeGraph, archetypeTransform, archetypeMask, archetypeEntitySet, archetypeAdjacent } from './Archetype'
import { BitSet } from './collections/BitSet'

export class World implements OutsideWorld, InsideWorld {
    private entityArchetype: InternalArchetype[] = []
    private deletedEntities: number[] = []
    private nextEntityId = 0 >>> 0
    private nextComponentId = 0 >>> 0

    private systems: System[] = []
    private queries: InternalQuery[] = [] // should be 1 to 1 with systems

    private deferredActions: (() => void)[] = []
    private rootArchetype: InternalArchetype = createArchetype('root', new BitSet(31), null) // will grow if a componentId > 255 is used

    private _executeDeferredActions() {
        if (!this.deferredActions.length) return

        for (const action of this.deferredActions) {
            action()
        }
        this.deferredActions.length = 0
    }

    getNextComponentId() {
        return this.nextComponentId++
    }

    registerSystem(system: System, query: Query) {
        this.systems.push(system)
        this.queries.push(<InternalQuery>query)

        traverseArchetypeGraph(this.rootArchetype, (archetype) => {
            (<InternalQuery>query)[queryTryAdd](archetype)
            return true
        })

        return this
    }

    /**
     * Update the world, invoking all systems.
     * Typically you want to update each animation frame (@see window.requestAnimationFrame)
     * @returns number of milliseconds that the update took
     */
    update(): this {
        const systems = this.systems
        const queries = this.queries
        for (let s = 0, sl = systems.length; s < sl; s++) {
            const system = systems[s]!
            const query = queries[s]!
            // reverse iterating in case a system adds/removes component resulting in new archetype that matches query for the system
            for (let a = query.archetypes.length - 1; a >= 0; a--) {
                const entities = (<InternalArchetype[]>query.archetypes)[a]![archetypeEntitySet].values
                if (entities.length > 0) {
                    system(entities, this)
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
    defer(action: () => void): this {
        this.deferredActions.push(action)
        return this
    }
    
    subscribe<T extends WorldEventType>(event: T, handler: WorldEventHandler<T>): (() => void) {
        throw new Error('')
    }

    prefabricate(componentIds: number[]): Archetype {
        this.nextComponentId = Math.max(this.nextComponentId - 1, ...componentIds) + 1 >>> 0

        let archetype = this.rootArchetype
        for (let i = 0, l = componentIds.length; i < l; i++) {
            archetype = archetype[archetypeTransform](componentIds[i]!, this.queries)
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
        archetype[archetypeEntitySet].add(entity)
        this.entityArchetype[entity] = archetype
        return entity
    }

    deleteEntity(entity: number): this {
        if (this.entityArchetype[entity] === undefined) {
            if (entity === undefined) {
                console.warn(`
Seems like you're iterating entities from 0..N and deleting entities.
This may remove the entity from the query results passed to your system.
Try one of the following options:
A: while (entities.length) {...}
B: for (let i = entities.length -1; i >= 0; i--) {...}
C: for (let i = 0, l = entities.length; i < l; i++) {
    world.defer(() => { // Defer the deletion of entity until after all systems has been executed
        world.deleteEntity(entities[i], X)
    })
},`)
                throw new Error('Undefined entity')
            } else if (this.deletedEntities.includes(entity)) {
                throw new Error(`Entity ${entity} is deleted`)
            }
            throw new Error(`Entity ${entity} does not exist`)
        }

        const archetype = this.entityArchetype[entity]!
        archetype[archetypeEntitySet].remove(entity)
        // much faster than delete operator, but achieves the same (ish)
        // an alternative is to leave it be, and use archetype.entitySet.has(entity) as a check for entity being deleted, but that too is a little slower.
        this.entityArchetype[entity] = undefined as any
        this.deletedEntities.push(entity)
        return this
    }

    transformEntity(entity: number, prefab: Archetype): this {
        if (this.entityArchetype[entity] === undefined) {
            if (entity === undefined) {
                console.warn(`
Seems like you're iterating entities from 0..N and transforming entities.
This may remove the entity from the query results passed to your system.
Try one of the following options:
A: while (entities.length) {...}
B: for (let i = entities.length -1; i >= 0; i--) {...}
C: for (let i = 0, l = entities.length; i < l; i++) {
    world.defer(() => { // Defer the change of entity until after all systems has been executed
        world.transformEntity(entities[i], prefabX)
    })
},`)
                throw new Error('Undefined entity')
            } else if (this.deletedEntities.includes(entity)) {
                throw new Error(`Entity ${entity} is deleted`)
            }
            throw new Error(`Entity ${entity} does not exist`)
        }
        
        this.entityArchetype[entity]![archetypeEntitySet].remove(entity)
        const archetype = <InternalArchetype>prefab
        archetype[archetypeEntitySet].add(entity)
        this.entityArchetype[entity] = archetype
        return this
    }

    hasComponentId(entity: number, componentId: number): boolean {
        return this.entityArchetype[entity] !== undefined
            && this.entityArchetype[entity]![archetypeMask].has(componentId)
    }

    addComponentId(entity: number, componentId: number): this {
        if (this.entityArchetype[entity] === undefined) {
            if (entity === undefined) {
                console.warn(`
Seems like you're iterating entities from 0..N and setting components on the entities.
This may remove the entity from the query results passed to your system.
Try one of the following options:
A: while (entities.length) {...}
B: for (let i = entities.length -1; i >= 0; i--) {...}
C: for (let i = 0, l = entities.length; i < l; i++) {
    world.defer(() => { // Defer the change of entity until after all systems has been executed
        world.setComponent(entities[i], X)
    })
},`)
                throw new Error('Undefined entity')
            } else if (this.deletedEntities.includes(entity)) {
                throw new Error(`Entity ${entity} is deleted`)
            }
            throw new Error(`Entity ${entity} does not exist`)
        }
        let archetype = this.entityArchetype[entity]!

        if (!archetype[archetypeMask].has(componentId)) {
            archetype[archetypeEntitySet].remove(entity)
            archetype = archetype[archetypeAdjacent][componentId] || archetype[archetypeTransform](componentId, this.queries)
            archetype[archetypeEntitySet].add(entity)
            this.entityArchetype[entity] = archetype
        }
        return this
    }

    subtractComponentId(entity: number, componentId: number): this {
        if (this.entityArchetype[entity] === undefined) {
            if (entity === undefined) {
                console.warn(`
Seems like you're iterating entities from 0..N and removing components from the entities.
This may remove the entity from the query results passed to your system.
Try one of the following options:
A: while (entities.length) {...}
B: for (let i = entities.length -1; i >= 0; i--) {...}
C: for (let i = 0, l = entities.length; i < l; i++) {
    world.defer(() => { // Defer the change of entity until after all systems has been executed
        world.removeComponent(entities[i], X)
    })
},`)
                throw new Error('Undefined entity')
            } else if (this.deletedEntities.includes(entity)) {
                throw new Error(`Entity ${entity} is deleted`)
            }
            throw new Error(`Entity ${entity} does not exist`)
        }
        let archetype = this.entityArchetype[entity]!

        if (archetype[archetypeMask].has(componentId)) {
            archetype[archetypeEntitySet].remove(entity)
            archetype = archetype[archetypeAdjacent][componentId] || archetype[archetypeTransform](componentId, this.queries)
            archetype[archetypeEntitySet].add(entity)
            this.entityArchetype[entity] = archetype
        }
        return this
    }
}
