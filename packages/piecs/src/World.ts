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
    private blankArchetype: Archetype = createArchetype(new BitSet(0))
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
            traverseArchetypeGraph(this.blankArchetype, (archetype) => {
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
        const blankArchetype = createArchetype(new BitSet(this.nextComponentId))
        this.blankArchetype = blankArchetype

        this.queries.forEach(query => {
            query.tryAdd(blankArchetype)
        })

        // this doesn't really seem to do much, but I think it could be usefull in some scenarios
        expectedComponentIdCombinations.forEach(combinations => {
            let archetype = blankArchetype
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
            system(query.archetypes, this)
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
            ? this.deletedEntities.pop()! | 0
            : this.nextEntityId++

        const archetype = this.blankArchetype
        archetype.entitySet.add(entity)
        this.entityArchetype[entity] = archetype
        return entity
    }

    deleteEntity(entity: number): this {
        const archetype = this.entityArchetype[entity]
        if (!archetype) throw new Error(`Entity ${entity} does not exist`)

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

    setComponent(entity: number, componentId: number): this {
        if (!this.entityArchetype[entity]) throw new Error(`Entity ${entity} does not exist`)
        let archetype = this.entityArchetype[entity]!

        if (!archetype.mask.has(componentId)) {
            archetype.entitySet.remove(entity)
            archetype = archetype.transform(componentId, this.queries)
            archetype.entitySet.add(entity)
            this.entityArchetype[entity] = archetype
        }
        return this
    }

    removeComponent(entity: number, componentId: number): this {
        if (!this.entityArchetype[entity]) throw new Error(`Entity ${entity} does not exist`)
        let archetype = this.entityArchetype[entity]!

        if (archetype.mask.has(componentId)) {
            archetype.entitySet.remove(entity)
            archetype = archetype.transform(componentId, this.queries)
            archetype.entitySet.add(entity)
            this.entityArchetype[entity] = archetype
        }
        return this
    }
}
