import { Archetype } from './Archetype'
import type { Query } from './Query'

export type System = (results: ArrayLike<number>, world: InsideWorld) => void

type ComponentEventType = `component-${'added' | 'subtracted'}`
export type ComponentEvent = {
    type: ComponentEventType
    entity: number
    componentId: number
    additionalComponentIds: number[]
}

type EntityEventType = `entity-${'created' | 'deleted' | 'transformed'}`
export type EntityEvent = {
    type: EntityEventType
    entity: number
    archetype: Archetype
}

export type WorldEventType =
    | ComponentEventType
    | EntityEventType

export type WorldEventHandler<T extends WorldEventType> = (event: T extends EntityEventType ? EntityEvent : ComponentEvent) => void

export type Unsubscribe = () => void

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
    subscribe<T extends WorldEventType>(event: T, handler: WorldEventHandler<T>): Unsubscribe
}
