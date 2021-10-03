import { StructValueType } from './collections/StructVector'
import { VectorValueType } from './collections/Vector'
import { ComponentSet } from './ComponentSet'
import { Query } from './Query'

/**
 * The system may be executed more than once each update.
 * But it will never be executed more than once with the same entities in the same update cycle
 */
// export interface System {
//     name: string
//     init?: (world: InsideWorld) => void
//     execute: (entities: Readonly<ArrayLike<number>>, world: InsideWorld) => void
//     query: Query
// }

export type System = (results: ArrayLike<{ entities: ArrayLike<number> }>, world: InsideWorld) => void

export interface InsideWorld {
    hasEntity: (entity: number) => boolean
    createEntity: () => number
    deleteEntity: (entity: number) => InsideWorld
    defer: (action: () => void) => InsideWorld
    setComponent: (entity: number, componentId: number) => InsideWorld
    hasComponent: (entity: number, componentId: number) => boolean
    removeComponent: (entity: number, componentId: number) => InsideWorld
}
export interface OutsideWorld extends InsideWorld {
    getNextComponentId: () => number
    createComponentSet: <T>(type: VectorValueType | 'flag' | StructValueType[], defaultValue: T) => ComponentSet<T>
    registerSystem: (system: System, query: Query) => OutsideWorld
    /**
     * Provide known combinations of componentId's to preinitialize
     */
    init: (...prefabs: Array<Array<number>>) => OutsideWorld
    update: () => OutsideWorld
}
