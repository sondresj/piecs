import type { Archetype } from './Archetype'
import type { Query } from './Query'

export type System = (results: ArrayLike<number>, world: InsideWorld) => void

export interface InsideWorld {
    hasEntity(entity: number): boolean
    createEntity(): number
    deleteEntity(entity: number): void
    defer(action: () => void): void
    addComponentId(entity: number, componentId: number): void
    hasComponentId(entity: number, componentId: number): boolean
    removeComponentId(entity: number, componentId: number): void
    transformEntity(entity: number, prefabricate: Archetype): void
}

export interface OutsideWorld extends InsideWorld {
    getNextComponentId(): number
    registerSystem(system: System, query: Query): OutsideWorld
    prefabricate(componentIds: number[]): Archetype
    initialize(): void
    update(): void
}
