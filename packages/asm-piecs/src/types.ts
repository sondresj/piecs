

export interface ComponentSet<T> {
    readonly id: u32
    readonly name: string
    add(entity: u32, value?: T): void
    set(entity: u32, value?: T): void
    get(entity: u32): T | null
    has(entity: u32): bool
    remove(entity: u32): void
}
// export interface OutsideWorld extends InsideWorld {
//     createComponentSet<T>(name: string, type: string/*VectorValueType | 'flag' | StructValueType[]*/, defaultValue: T): ComponentSet<T>
//     registerSystem(system: System, query: Query): void
//     init(): void
//     update(): void
// }

// export interface InternalWorld extends InsideWorld {
//     setComponent(entity: u32, componentId: u32): void
//     hasComponent(entity: u32, componentId: u32): bool
//     removeComponent(entity: u32, componentId: u32): void
// }

// export interface System<TC extends ComponentSet<any>> {
//     name: string
//     init: (world: InsideWorld) => void
//     execute: (entities: ArrayLike<number>, world: InsideWorld) => void
//     query: Query<TC>
// }