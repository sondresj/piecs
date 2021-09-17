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

export type EntityIterator = (callback: (entity: number) => void) => void
export interface System<TC extends InstanceType<typeof ComponentSet>> {
    name: string
    init?: (world: InsideWorld) => void
    execute: (entityIterator: EntityIterator, world: InsideWorld, dt: number) => void
    query: Query<TC>
}

export interface InsideWorld {
    readonly hasEntity: (entity: number) => boolean
    readonly createEntity: () => number
    readonly deleteEntity: (entity: number) => InsideWorld
}

export interface IBuildWorld {
    readonly createComponentSet: <T>(name: string, type: ComponentType<T>, defaultValue: T) => ComponentSet<T>
    readonly registerSystem: <TC extends InstanceType<typeof ComponentSet>>(system: System<TC>) => IBuildWorld
    readonly build: () => OutsideWorld
}

export interface OutsideWorld extends InsideWorld {
    readonly update: () => number
    readonly registerSystem: <TC extends InstanceType<typeof ComponentSet>>(system: System<TC>) => OutsideWorld
}

export interface InternalWorld {
    readonly hasEntity: (entity: number) => boolean
    readonly setComponent: (entity: number, componentId: number, defer?: boolean) => InternalWorld
    readonly hasComponent: (entity: number, componentId: number) => boolean
    readonly removeComponent: (entity: number, componentId: number, defer?: boolean) => InternalWorld
}
