export abstract class RelativeIndexable<T> {
    readonly [key: u32]: T
    abstract get length(): i32
}
