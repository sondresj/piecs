import { StructValueType } from './collections/StructVector'
import { VectorValueType } from './collections/Vector'
import { ComponentSet } from './ComponentSet'
import { Query } from './Query'

/**
 * The system may be executed more than once each update.
 * But it will never be executed more than once with the same entities in the same update cycle
 */
export interface System {
    name: string
    init?: (world: InsideWorld) => void
    execute: (entities: Readonly<ArrayLike<number>>, world: InsideWorld) => void
    query: Query
}

export interface InsideWorld {
    readonly hasEntity: (entity: number) => boolean
    readonly createEntity: () => number
    readonly deleteEntity: (entity: number) => InsideWorld
    readonly defer: (action: () => void) => InternalWorld
}
export interface OutsideWorld extends InsideWorld {
    readonly createComponentSet: <T>(name: string, type: VectorValueType | 'flag' | StructValueType[], defaultValue: T) => ComponentSet<T>
    readonly registerSystem: (system: System) => OutsideWorld
    readonly init: () => OutsideWorld
    readonly update: () => OutsideWorld
}

export interface InternalWorld {
    readonly hasEntity: (entity: number) => boolean
    readonly setComponent: (entity: number, componentId: number) => InternalWorld
    readonly hasComponent: (entity: number, componentId: number) => boolean
    readonly removeComponent: (entity: number, componentId: number) => InternalWorld
}
