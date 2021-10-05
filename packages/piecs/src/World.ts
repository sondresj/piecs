import type { System, InsideWorld, OutsideWorld } from './types'
import type { Query } from './Query'
import { Archetype, createArchetype, traverseArchetypeGraph } from './Archetype'
import { BitSet } from './collections/BitSet'

export class World implements OutsideWorld, InsideWorld {
    private entityArchetype: Archetype[] = []
    private deletedEntities: number[] = []
    private nextEntityId = 0
    private nextComponentId = 0

    private systems: System[] = []
    private queries: Query[] = [] // should be 1 to 1 with systems

    private deferredActions: (() => void)[] = []
    private rootArchetype: Archetype = createArchetype(new BitSet(0))
    private initialized = false

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
        this.queries.push(query)

        if (this.initialized) {
            traverseArchetypeGraph(this.rootArchetype, (archetype) => {
                query.tryAdd(archetype)
                return true
            })
        }

        return this
    }

    init(...expectedComponentIdCombinations: Array<Array<number>>) {
        if (this.initialized) {
            console.warn('Attempted to rebuild world, this is not allowed')
            return this
        }
        this.initialized = true

        // create a blank archetype that serves as the base archetype for all entities
        const rootArchetype = createArchetype(new BitSet(this.nextComponentId))
        this.rootArchetype = rootArchetype

        this.queries.forEach(query => {
            query.tryAdd(rootArchetype)
        })

        // this doesn't really seem to do much, but I think it could be usefull in some scenarios
        expectedComponentIdCombinations.forEach(combinations => {
            let archetype = rootArchetype
            combinations.forEach(componentId => {
                archetype = archetype.transform(componentId, this.queries)
            })
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
                const entities = query.archetypes[a]!.entitySet.values
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

    hasEntity(entity: number): boolean {
        return this.entityArchetype[entity] !== undefined
    }

    createEntity(): number {
        if (!this.initialized) throw new Error('Not initialized')

        const entity = this.deletedEntities.length > 0
            ? this.deletedEntities.pop()!
            : this.nextEntityId++

        const archetype = this.rootArchetype
        archetype.entitySet.add(entity)
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
            } else if (this.deletedEntities.includes(entity)) {
                throw new Error(`Entity ${entity} is deleted`)
            }
            throw new Error(`Entity ${entity} does not exist`)
        }

        const archetype = this.entityArchetype[entity]!
        archetype.entitySet.remove(entity)
        // much faster than delete operator, but achieves the same (ish)
        // an alternative is to leave it be, and use archetype.entitySet.has(entity) as a check for entity being deleted, but that too is a little slower.
        this.entityArchetype[entity] = undefined as any
        this.deletedEntities.push(entity)
        return this
    }

    hasComponent(entity: number, componentId: number): boolean {
        return this.entityArchetype[entity] !== undefined
            && this.entityArchetype[entity]!.mask.has(componentId)
    }

    addComponent(entity: number, componentId: number): this {
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
            } else if (this.deletedEntities.includes(entity)) {
                throw new Error(`Entity ${entity} is deleted`)
            }
            throw new Error(`Entity ${entity} does not exist`)
        }
        let archetype = this.entityArchetype[entity]!

        if (!archetype.mask.has(componentId)) {
            archetype.entitySet.remove(entity)
            archetype = archetype.adjacent[componentId] || archetype.transform(componentId, this.queries)
            archetype.entitySet.add(entity)
            this.entityArchetype[entity] = archetype
        }
        return this
    }

    removeComponent(entity: number, componentId: number): this {
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
            } else if (this.deletedEntities.includes(entity)) {
                throw new Error(`Entity ${entity} is deleted`)
            }
            throw new Error(`Entity ${entity} does not exist`)
        }
        let archetype = this.entityArchetype[entity]!

        if (archetype.mask.has(componentId)) {
            archetype.entitySet.remove(entity)
            archetype = archetype.adjacent[componentId] || archetype.transform(componentId, this.queries)
            archetype.entitySet.add(entity)
            this.entityArchetype[entity] = archetype
        }
        return this
    }
}
