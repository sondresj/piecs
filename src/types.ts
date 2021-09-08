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

export type ArrayType = 
    | `uint${8 | '8c' | 16 | 32}`
    | `int${8 | 16 | 32}`
    | `float${32 | 64}`
    | 'pointer'
    | 'any'

export type ArrayClass =
    | Uint8ArrayConstructor
    | Uint8ClampedArrayConstructor
    | Uint16ArrayConstructor
    | Uint32ArrayConstructor
    | Int8ArrayConstructor
    | Int16ArrayConstructor
    | Int32ArrayConstructor
    | Float32ArrayConstructor
    | Float64ArrayConstructor
    | ArrayConstructor

export type TypedArray =
    | Uint8Array
    | Uint8ClampedArray
    | Uint16Array
    | Uint32Array
    | Int8Array
    | Int16Array
    | Int32Array
    | Float32Array
    | Float64Array
    | any[]
export interface System<
    TM extends ComponentTypeMap
> {
    name: string
    init?: (world: BoundWorld<TM>) => void
    execute: (matchingEntities: IterableIterator<number>, world: BoundWorld<TM>, dt: number) => void
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
}
