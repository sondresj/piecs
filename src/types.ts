import { ComponentSet, ComponentType } from './ComponentSet'

type GroupQuery<Tkeys> = {
    type: 'and' | 'or' | 'not'
    subQueries: Query<Tkeys>[]
}

type LeafQuery<Tkeys> = {
    type: 'every' | 'some'
    match: Tkeys[]
}

export type Query<Tkeys> = LeafQuery<Tkeys> | GroupQuery<Tkeys>

/**
 * The system may be executed more than once each update.
 * But it will never be executed more than once with the same entities in the same update cycle
 */
export interface System<TC extends InstanceType<typeof ComponentSet>> {
    name: string
    init?: (world: InsideWorld) => void
    execute: (entities: Readonly<ArrayLike<number>>, world: InsideWorld) => void
    query: Query<TC>
}

export interface InsideWorld {
    readonly hasEntity: (entity: number) => boolean
    readonly createEntity: () => number
    readonly deleteEntity: (entity: number) => InsideWorld
    readonly defer: (action: () => void) => InternalWorld
}
export interface OutsideWorld extends InsideWorld {
    readonly createComponentSet: <T>(name: string, type: ComponentType<T>, defaultValue: T) => ComponentSet<T>
    readonly registerSystem: <TC extends InstanceType<typeof ComponentSet>>(system: System<TC>) => OutsideWorld
    readonly init: () => OutsideWorld
    readonly update: () => OutsideWorld
}

export interface InternalWorld {
    readonly hasEntity: (entity: number) => boolean
    readonly setComponent: (entity: number, componentId: number) => InternalWorld
    readonly hasComponent: (entity: number, componentId: number) => boolean
    readonly removeComponent: (entity: number, componentId: number) => InternalWorld
}
