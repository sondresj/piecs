import type { System, ComponentTypeMap, BoundWorld } from './types'
import Archetype from './Archetype'
import BitMask from './Bitmask'
import CompiledQuery from './Query'
import SparseSet from './SparseSet'
import { cantorPair, timer } from './utils'

export default class World<TM extends ComponentTypeMap> implements BoundWorld<TM> {
    /**
     * [archetype.toString()]: archetype
     */
    private archetypes: Map<string, Archetype> = new Map()
    /**
     * [entity: number]: archetype
     * can be sparse (there may or may not be gaps)
     */
    private entityArchetypeIds: string[] = []
    private nextEntityId = 0
    private entitiesKilled = new SparseSet()
    /**
     * [cantorPair(entity, componentId)]: value
     */
    private entityComponentValues: unknown[] = []
    /**
     * [keyof TM]: number
     */
    private componentIdMap: Map<keyof TM, number> = new Map()
    /**
     * [system.name]: System
     */
    private systems: Map<string, System<TM>> = new Map()
    /**
     * [system.name]: CompiledQuery(system.query)
     */
    private systemQueries: Map<string, CompiledQuery<TM>> = new Map()

    private deferredActions: Array<() => void> = []
    private lastElapsed = 0
    private BLANK_ARCHETYPE_ID: string

    constructor(
        componentTypeMap: Readonly<TM>,
        systems: System<TM>[]
    ) {
        const cKeys = Object.keys(componentTypeMap)
        for (let i = 0; i < cKeys.length; i++) {
            this.componentIdMap.set(cKeys[i]!, i)
        }

        for (const system of systems) {
            this.systems.set(system.name, system)
            this.systemQueries.set(system.name, new CompiledQuery(system.query, this.componentIdMap))
        }

        // create a blank archetype that serves as the base archetype for all entities
        const blankArchetype = new Archetype(new BitMask(this.componentIdMap.size))
        this.archetypes.set(blankArchetype.id, blankArchetype)
        this.BLANK_ARCHETYPE_ID = blankArchetype.id

        Object.freeze(this)
    }

    /**
     * Initialize world, invoking the initializer for each system
     * @param initialEntityComponents optional array of initial entity components
     * @returns this
     */
    readonly init = (initialEntityComponents: Partial<TM>[] = []): this => {
        if(this.nextEntityId > 0) {
            throw new Error('Already initialized')
        }

        for (const entityComponets of initialEntityComponents) {
            for (const [type, value] of Object.entries(entityComponets)) {
                const entity = this.spawnEntityImmediate()
                this.setComponentImmediate(entity, type, value as any)
            }
        }

        for(const system of this.systems.values()) {
            if(system.init) {
                system.init(this)
            }
        }
        this.executeDeferredActions()
        return this
    }

    /**
     * Update the world, invoking all systems.
     * Typically you want to update each animation frame (@see window.requestAnimationFrame)
     * @returns number of milliseconds that the update took
     */
    readonly update = (): number => {
        const getElapsed = timer(this.lastElapsed)
        for(const system of this.systems.values()) {
            const query = this.systemQueries.get(system.name)!
            system.execute(getElapsed(), [...query.getMatchingEntities()], this)
        }

        this.executeDeferredActions()

        const totalElapsed = getElapsed()
        const executionTime = totalElapsed + this.lastElapsed
        this.lastElapsed = totalElapsed
        return executionTime
    }

    private assertHasEntity = (entity: number) => {
        if(this.entitiesKilled.has(entity)) {
            throw new Error(`Entity ${entity} is removed`)
        }
        if(!this.entityArchetypeIds[entity])
            throw new Error(`Entity ${entity} does not exist`)

    }

    private assertHasComponent = <CT extends keyof TM>(type: CT) => {
        if(!this.componentIdMap.has(type))
            throw new Error(`Component ${type} does not exist`)
    }

    private defer = (action: () => void) => {
        this.deferredActions.push(action)
    }

    private executeDeferredActions = () => {
        if(!this.deferredActions.length) return

        for(const action of this.deferredActions) {
            action()
        }
        this.deferredActions = []
    }

    private getEntityArchetype = (entity: number): Archetype => {
        this.assertHasEntity(entity)
        const archetypeId = this.entityArchetypeIds[entity]!
        return this.archetypes.get(archetypeId)!
    }

    private setEntityArchetype = (entity: number, archetype: Archetype) => {
        this.archetypes.set(archetype.id, archetype)
        this.entityArchetypeIds[entity] = archetype.id
    }

    private getComponentId = <CT extends keyof TM>(type: CT): number => {
        this.assertHasComponent(type)
        return this.getComponentId(type)!
    }

    private getNextEntityId = () => {
        return this.entitiesKilled.size > 0
            ? this.entitiesKilled.pop()!
            : this.nextEntityId++
    }

    private _addEntity = (id: number) => {
        const archetype = this.archetypes.get(this.BLANK_ARCHETYPE_ID)!
        archetype.addEntity(id)
        this.setEntityArchetype(id, archetype)
    }

    // BoundWorld interface

    readonly hasEntity = (entity: number): boolean => {
        return !!this.entityArchetypeIds[entity]
    }

    readonly spawnEntity = (): number => {
        const id = this.getNextEntityId()
        this.defer(() => this._addEntity(id))
        return id
    }

    readonly spawnEntityImmediate = (): number => {
        const id = this.getNextEntityId()
        this._addEntity(id)
        return id
    }

    readonly killEntity = (entity: number): this => {
        this.defer(() => this.killEntityImmediate(entity))
        return this
    }

    readonly killEntityImmediate = (entity: number): this => {
        const archetype = this.getEntityArchetype(entity)
        archetype.removeEntity(entity)
        this.entitiesKilled.add(entity)
        return this
    }

    readonly hasEntityComponent = <CT extends keyof TM>(entity: number, type: CT): boolean => {
        const componentId = this.getComponentId(type)
        const archetype = this.getEntityArchetype(entity)
        return archetype.hasComponent(componentId)
    }

    readonly setComponent = <CT extends keyof TM>(entity: number, type: CT, value: TM[CT]): this => {
        this.defer(() => this.setComponentImmediate(entity, type, value))
        return this
    }

    readonly setComponentImmediate = <CT extends keyof TM>(entity: number, type: CT, value: TM[CT]): this => {
        const componentId = this.getComponentId(type)
        let archetype = this.getEntityArchetype(entity)

        if(!archetype.hasComponent(componentId)) {
            archetype.removeEntity(entity)
            const nextArchetypeMask = archetype.copyMask().xor(componentId)
            archetype = this.archetypes.get(nextArchetypeMask.toString())
                ?? new Archetype(nextArchetypeMask)
            archetype.addEntity(entity)
            this.setEntityArchetype(entity, archetype)
            for(const query of this.systemQueries.values()) {
                query.tryAddMatch(archetype)
            }
        }

        this.entityComponentValues[cantorPair(entity, componentId)] = value
        return this
    }

    readonly getEntityComponent = <CT extends keyof TM>(entity: number, type: CT): TM[CT] | undefined => {
        this.assertHasEntity(entity)
        const componentId = this.getComponentId(type)
        return this.entityComponentValues[cantorPair(entity, componentId)] as TM[CT] | undefined
    }

    readonly removeComponent = <CT extends keyof TM>(entity: number, type: CT): this => {
        this.defer(() => this.removeComponentImmediate(entity, type))
        return this
    }

    readonly removeComponentImmediate = <CT extends keyof TM>(entity: number, type: CT): this => {
        const componentId = this.getComponentId(type)
        let archetype = this.getEntityArchetype(entity)
        archetype.removeEntity(entity)
        const nextMask = archetype.copyMask().xor(componentId)
        archetype = this.archetypes.get(nextMask.toString()) ?? new Archetype(nextMask)
        archetype.addEntity(entity)
        this.setEntityArchetype(entity, archetype)

        // not removing from this.entityComponetValues because removing from array because we might want to reuse the entity id and the slot later

        return this
    }
}
