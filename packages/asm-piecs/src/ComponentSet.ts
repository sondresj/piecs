export abstract class ComponentSet<T>{
    readonly id: u32
    // readonly name: string
    abstract add(entity: u32, value?: T): this
    abstract set(entity: u32, value?: T): this
    abstract get(entity: u32): T | null
    abstract has(entity: u32): bool
    abstract remove(entity: u32): this
}