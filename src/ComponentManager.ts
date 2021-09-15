import { ArrayType } from './collections/types'
import { ComponentTypeConfig, ComponentTypeConfigMap, ComponentTypeMap } from './types'
import { SparseMap } from './collections/SparseMap'

// The idea here is to collect all the components of the same type togheter in memory to increase likelyhood of cpu chache hits

const arrayTypes: ArrayType[] = ['any', 'float32', 'float64', 'int16', 'int32', 'int8', 'pointer', 'uint16', 'uint32', 'uint8', 'uint8c']
const mapType = (type: string): ArrayType => arrayTypes.includes(type as any)
    ? type as ArrayType
    : 'any'

export class ComponentManager<TM extends ComponentTypeMap> {
    private nextComponentId = 0
    private componentIds: Map<keyof TM, number> = new Map()
    private componentMaps: Map<number, SparseMap<unknown>> = new Map()
    private componentTypeConfigs: Readonly<ComponentTypeConfigMap<TM>>

    constructor(componentTypeConfig: ComponentTypeConfigMap<TM>) {
        this.componentTypeConfigs = componentTypeConfig
        for (const [key, config] of Object.entries(componentTypeConfig) as [keyof TM, ComponentTypeConfig<any>][]) {
            const id = this.nextComponentId++
            this.componentIds.set(key, id)
            this.componentMaps.set(id, new SparseMap<unknown>('uint32', mapType(config.type) as any))
        }
    }

    private getComponentMap = <CT extends keyof TM>(type: CT) => {
        const cid = this.componentIds.get(type)
        if (cid === undefined)
            throw new Error(`Unknown component ${type}`)
        return this.componentMaps.get(cid)!
    }

    getComponentId = <CT extends keyof TM>(type: CT): number => {
        const cid = this.componentIds.get(type)
        if (cid === undefined)
            throw new Error(`Unknown component ${type}`)
        return cid
    }

    getComponentIdMap = (): ReadonlyMap<keyof TM, number> => this.componentIds
    getMaxComponentId = (): number => this.nextComponentId - 1

    set = <CT extends keyof TM>(
        entity: number,
        type: CT,
        value: TM[CT] = this.componentTypeConfigs[type].default
    ): this => {
        this.getComponentMap(type).set(entity, value)
        return this
    }

    get = <CT extends keyof TM>(
        entity: number,
        type: CT
    ): TM[CT] | undefined => {
        return this.getComponentMap(type).get(entity) as any
    }

    delete = <CT extends keyof TM>(
        entity: number,
        type: CT
    ): this => {
        this.getComponentMap(type).delete(entity)
        return this
    }

    forEach = <CT extends keyof TM>(type: CT, callback: (entity: number, component: TM[CT]) => void) => {
        this.getComponentMap(type).forEach(callback as any)
    }

    // getComponentEntities = <CT extends keyof TM>(
    //     type: CT
    // ): IterableIterator<number> => {
    //     return this.getComponentMap(type).keys()
    // }

    // getComponentValues = <CT extends keyof TM>(
    //     type: CT
    // ): IterableIterator<TM[CT]> => {
    //     return this.getComponentMap(type).values() as any
    // }

    // getComponentEntries = <CT extends keyof TM>(
    //     type: CT
    // ): IterableIterator<[entity: number, component: TM[CT]]> => {
    //     return this.getComponentMap(type).entries() as any
    // }
}
