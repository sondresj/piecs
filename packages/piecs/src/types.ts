import { Query } from './Query'

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
    registerSystem: (system: System, query: Query) => OutsideWorld
    /**
     * Provide known combinations of componentId's to preinitialize
     */
    init: (...prefabs: Array<Array<number>>) => OutsideWorld
    update: () => OutsideWorld
}
