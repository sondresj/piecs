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
