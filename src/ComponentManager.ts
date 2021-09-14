import { ArrayType } from './collections/types'
import { ComponentTypeConfig, ComponentTypeConfigMap, ComponentTypeMap } from './types'
import { SparseMap } from './collections/SparseMap'

// The idea here is to collect all the components of the same type togheter in mememory to increase likelyhood of cpu chache hits

const arrayTypes: ArrayType[] = ['any', 'float32', 'float64', 'int16', 'int32', 'int8', 'pointer', 'uint16', 'uint32', 'uint8', 'uint8c']
const mapType = (type: string): ArrayType => arrayTypes.includes(type as any)
    ? type as ArrayType
    : 'any'

export class ComponentManager<TM extends ComponentTypeMap> {
    private nextComponentId = 0
    private componentIds: Map<keyof TM, number> = new Map()
    private componentSets: Map<number, SparseMap<unknown>> = new Map()
    private componentTypeConfigs: ComponentTypeConfigMap<TM>

    constructor(componentTypeConfig: ComponentTypeConfigMap<TM>) {
        this.componentTypeConfigs = componentTypeConfig
        for (const [key, config] of Object.entries(componentTypeConfig) as [keyof TM, ComponentTypeConfig<any>][]) {
            const id = this.nextComponentId++
            this.componentIds.set(key, id)
            this.componentSets.set(id, new SparseMap<unknown>('uint32', mapType(config.type) as any))
        }
    }

    // TODO: Optimize
    private getComponentSet = <CT extends keyof TM>(type: CT) => {
        const componentId = this.componentIds.get(type)
        if (componentId === undefined)
            throw new Error(`Unknown component ${type}`)
        return this.componentSets.get(componentId)!
    }

    getComponentId = <CT extends keyof TM>(type: CT): number => {
        const componentId = this.componentIds.get(type)
        if (componentId === undefined)
            throw new Error(`Unknown component ${type}`)
        return componentId
    }

    getComponentIdMap = (): ReadonlyMap<keyof TM, number> => this.componentIds
    getMaxComponentId = (): number => this.nextComponentId - 1

    set = <CT extends keyof TM>(
        entity: number,
        type: CT,
        value: TM[CT] = this.componentTypeConfigs[type].default
    ): this => {
        this.getComponentSet(type).set(entity, value)
        return this
    }

    get = <CT extends keyof TM>(
        entity: number,
        type: CT
    ): TM[CT] | undefined => {
        return this.getComponentSet(type).get(entity) as any
    }

    delete = <CT extends keyof TM>(
        entity: number,
        type: CT
    ): this => {
        this.getComponentSet(type).delete(entity)
        return this
    }

    getComponentEntities = <CT extends keyof TM>(
        type: CT
    ): IterableIterator<number> => {
        return this.getComponentSet(type).keys()
    }

    getComponentValues = <CT extends keyof TM>(
        type: CT
    ): IterableIterator<TM[CT]> => {
        return this.getComponentSet(type).values() as any
    }

    getComponentEntries = <CT extends keyof TM>(
        type: CT
    ): IterableIterator<[entity: number, component: TM[CT]]> => {
        return this.getComponentSet(type).entries() as any
    }
}
