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
    deleteEntity(entity: number): InsideWorld
    defer(action: () => void): InsideWorld
    addComponentId(entity: number, componentId: number): InsideWorld
    hasComponentId(entity: number, componentId: number): boolean
    subtractComponentId(entity: number, componentId: number): InsideWorld
    transformEntity(entity: number, prefabricate: Archetype): InsideWorld
}

export interface OutsideWorld extends InsideWorld {
    getNextComponentId(): number
    registerSystem(system: System, query: Query): OutsideWorld
    prefabricate(componentIds: number[]): Archetype
    update(): OutsideWorld
    subscribe<T extends WorldEventType>(event: T, handler: WorldEventHandler<T>): Unsubscribe
}
