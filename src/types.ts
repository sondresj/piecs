import { ArrayType } from './collections/types'

type GroupQuery<Tkeys> = {
    type: 'and' | 'or' | 'not'
    subQueries: Query<Tkeys>[]
}

type LeafQuery<Tkeys> = {
    type: 'every' | 'some'
    match: Tkeys[]
}

export type Query<Tkeys> = LeafQuery<Tkeys> | GroupQuery<Tkeys>

export type ComponentTypeMap = Record<string, any>

export type ComponentIdMap<TM extends ComponentTypeMap> = ReadonlyMap<keyof TM, number>

type NumberType = Exclude<ArrayType, 'any'>

export type Typeof<T> = T extends number ? NumberType
    : T extends string ? 'string'
        : T extends boolean ? 'boolean'
            : T extends bigint ? 'bigint'
                : T extends (...args: any) => any ? 'function'
                    : T extends new (...args: any) => any ? 'class'
                        : T extends any[] ? 'array' // TODO: Could be a TypedArray Buffer, would need a vector for buffer for optimal performance
                            : T extends Record<string, any> ? 'object'
                                : 'any'

export type ComponentTypeConfig<T> = {
    type: Typeof<T>
    default: T
}

/**
 * For best performance, components should be number types if possible.
 * This is because we can leverage TypedArrays to get the componentvalues packed togheter in memory,
 * which increases likelyhood of CPU cache hits and increases performance by some orders of magnitude
 * (because a cpu has to waste around 300 cycles to get a value from DRAM)
 */
export type ComponentTypeConfigMap<TM extends ComponentTypeMap> = {
    [K in keyof TM]-?: ComponentTypeConfig<TM[K]>
}

export interface System<
    TM extends ComponentTypeMap
> {
    name: string
    init?: (world: BoundWorld<TM>) => void
    execute: (entityIterator: (callback: (entity: number) => void) => void, world: BoundWorld<TM>, dt: number) => void
    query: Query<keyof TM>
}

export interface BoundWorld<TM extends ComponentTypeMap> {
    readonly hasEntity: (entity: number) => boolean
    readonly spawnEntity: () => number
    readonly spawnEntityImmediate: () => number
    readonly killEntity: (entity: number) => this
    readonly killEntityImmediate: (entity: number) => this

    readonly hasEntityComponent: <CT extends keyof TM>(entity: number, type: CT) => boolean
    readonly setComponent: <CT extends keyof TM>(entity: number, type: CT, value?: TM[CT]) => this
    readonly setComponentImmediate: <CT extends keyof TM>(entity: number, type: CT, value?: TM[CT]) => this
    readonly getEntityComponent: <CT extends keyof TM>(entity: number, type: CT) => TM[CT] | undefined
    readonly removeComponent: <CT extends keyof TM>(entity: number, type: CT) => this
    readonly removeComponentImmediate: <CT extends keyof TM>(entity: number, type: CT) => this
    readonly forEachEntityWithComponent: <CT extends keyof TM>(type: CT, callback: (entity: number, component: TM[CT]) => void) => void
}
