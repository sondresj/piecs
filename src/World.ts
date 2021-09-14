import type { System, ComponentTypeMap, BoundWorld } from './types'
import { Archetype } from './Archetype'
import { BitMask } from './collections/Bitmask'
import { SparseSet } from './collections/SparseSet'
import { CompiledQuery } from './Query'
import { timer } from './utils'
import { ComponentManager } from './ComponentManager'
import { ComponentTypeConfigMap } from '.'

export class World<TM extends ComponentTypeMap> implements BoundWorld<TM> {
    /**
     * [archetype.toString()]: archetype
     */
    private archetypes: Record<string, Archetype> = {}
    /**
     * [entity: number]: archetype
     */
    private entityArchetypeIds: Record<number, string> = {}
    private nextEntityId = 0
    private entitiesKilled = new SparseSet('uint32')
    private componentManager: ComponentManager<TM>
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

    /**
     *
     * @param componentConfig default values for a component. also used to register components
     * @param systems
     */
    constructor(
        componentConfig: ComponentTypeConfigMap<TM>,
        systems: System<TM>[]
    ) {
        this.componentManager = new ComponentManager(componentConfig)

        for (const system of systems) {
            this.systems.set(system.name, system)
            this.systemQueries.set(system.name, new CompiledQuery(system.query, this.componentManager.getComponentIdMap()))
        }

        // create a blank archetype that serves as the base archetype for all entities
        const blankArchetype = new Archetype(new BitMask(this.componentManager.getMaxComponentId()))
        this.archetypes[blankArchetype.id] = blankArchetype
        this.BLANK_ARCHETYPE_ID = blankArchetype.id

        Object.seal(this)
    }

    /**
     * Initialize world, invoking the initializer for each system
     * @param initialEntityComponents optional array of initial entity components
     * @returns this
     */
    readonly init = (initialEntityComponents: Partial<TM>[] = []): this => {
        if (this.nextEntityId > 0) {
            throw new Error('Already initialized')
        }

        for (const entityComponets of initialEntityComponents) {
            for (const [type, value] of Object.entries(entityComponets)) {
                const entity = this.spawnEntityImmediate()
                this.setComponentImmediate(entity, type, value as any)
            }
        }

        for (const system of this.systems.values()) {
            if (system.init) {
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
        const dt = getElapsed()
        for (const system of this.systems.values()) {
            const query = this.systemQueries.get(system.name)!
            system.execute(query[Symbol.iterator](), this, dt)
        }

        this.executeDeferredActions()

        const totalElapsed = getElapsed()
        const executionTime = totalElapsed + this.lastElapsed
        this.lastElapsed = totalElapsed
        return executionTime
    }

    readonly addSystem = (system: System<TM>): this => {
        return this
    }

    readonly pauseSystem = (name: string): this => {
        return this
    }

    readonly unpauseSystem = (name: string): this => {
        return this
    }

    readonly addComponentType = <CT extends string, T>(name: CT, defaultValue: T): World<TM & Record<CT, T>> => {
        // if (this.componentIdMap.has(name)) return this
        // this.componentIdMap.set(name, this.componentIdMap.size)
        // // @ts-ignore
        // this.componentConfig[name] = defaultValue
        return this
    }

    private assertHasEntity = (entity: number) => {
        if (this.entitiesKilled.has(entity)) {
            throw new Error(`Entity ${entity} is dead`)
        }
        if (!this.entityArchetypeIds[entity])
            throw new Error(`Entity ${entity} does not exist`)
    }

    // private assertHasComponent = <CT extends keyof TM>(type: CT) => {
    //     if (!this.componentIdMap.has(type))
    //         throw new Error(`Component ${type} does not exist`)
    // }

    private defer = (action: () => void) => {
        this.deferredActions.push(action)
    }

    private executeDeferredActions = () => {
        if (!this.deferredActions.length) return

        for (const action of this.deferredActions) {
            action()
        }
        this.deferredActions.length = 0
    }

    private getEntityArchetype = (entity: number): Archetype => {
        this.assertHasEntity(entity)
        const archetypeId = this.entityArchetypeIds[entity]!
        return this.archetypes[archetypeId]!
    }

    private setEntityArchetype = (entity: number, archetype: Archetype) => {
        this.archetypes[archetype.id] = archetype
        this.entityArchetypeIds[entity] = archetype.id
    }

    // private getComponentId = <CT extends keyof TM>(type: CT): number => {
    //     return this.componentManager.getComponentIdMap().get(type)!
    // }

    private getNextEntityId = () => {
        return this.entitiesKilled.length > 0
            ? this.entitiesKilled.pop()!
            : this.nextEntityId++
    }

    private _addEntity = (id: number) => {
        const archetype = this.archetypes[this.BLANK_ARCHETYPE_ID]!
        archetype.addEntity(id)
        this.setEntityArchetype(id, archetype)
    }

    // BoundWorld interface

    readonly hasEntity = (entity: number): boolean => {
        return !this.entitiesKilled.has(entity) && !!this.entityArchetypeIds[entity]
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
        const componentId = this.componentManager.getComponentId(type)
        const archetype = this.getEntityArchetype(entity)
        return archetype.hasComponent(componentId)
    }

    readonly setComponent = <CT extends keyof TM>(
        entity: number,
        type: CT,
        value?: TM[CT]
    ): this => {
        this.defer(() => this.setComponentImmediate(entity, type, value))
        return this
    }

    readonly setComponentImmediate = <CT extends keyof TM>(
        entity: number,
        type: CT,
        value?: TM[CT]
    ): this => {
        const componentId = this.componentManager.getComponentId(type)
        let archetype = this.getEntityArchetype(entity)

        if (!archetype.hasComponent(componentId)) {
            archetype = archetype
                .removeEntity(entity)
                .transform(componentId, this.archetypes)
                .addEntity(entity)
            this.setEntityArchetype(entity, archetype)
            for (const query of this.systemQueries.values()) {
                query.tryAddMatch(archetype)
            }
        }

        this.componentManager.set(entity, type, value)
        return this
    }

    readonly getEntityComponent = <CT extends keyof TM>(entity: number, type: CT): TM[CT] | undefined => {
        this.assertHasEntity(entity)
        return this.componentManager.get(entity, type)
    }

    readonly removeComponent = <CT extends keyof TM>(entity: number, type: CT): this => {
        this.defer(() => this.removeComponentImmediate(entity, type))
        return this
    }

    readonly removeComponentImmediate = <CT extends keyof TM>(entity: number, type: CT): this => {
        const componentId = this.componentManager.getComponentId(type)

        const archetype = this.getEntityArchetype(entity)
            .removeEntity(entity)
            .transform(componentId, this.archetypes)
            .addEntity(entity)
        this.setEntityArchetype(entity, archetype)
        this.componentManager.delete(entity, type)
        return this
    }

    readonly getEntitiesWithComponent = <CT extends keyof TM>(type: CT) => {
        return this.componentManager.getComponentEntries(type)
    }
}
