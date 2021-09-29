import { World } from '.'

// @final @unmanaged class Tuple<T1, T2 = T1> {
//     first: T1
//     second: T2
// }

// @final @unmanaged class Triple<T1, T2 = T1, T3 = T1> {
//     first: T1
//     second: T2
//     third: T3
// }

export class FlagComponentSet {
    private _id: u32
    private _world: World

    constructor(world: World) {
        this._id = world.getNextComponentId()
        this._world = world
    }

    get id(): u32 {
        return this._id
    }

    add(entity: u32): void {
        this._world.setComponent(entity, this.id)
    }

    has(entity: u32): bool {
        const world = this._world
        return world.hasEntity(entity)
            && world.hasComponent(entity, this._id)
    }

    remove(entity: u32): void {
        this._world.removeComponent(entity, this._id)
    }
}

export class ComponentSet<T> {
    private _id: u32
    private _values: Array<T>
    private _world: World

    constructor(world: World) {
        this._id = world.getNextComponentId()
        this._values = new Array<T>()
        this._world = world
    }

    get id(): u32 {
        return this._id
    }

    add(entity: u32, value: T): void {
        this._world.setComponent(entity, this.id)
        this._values[<i32>entity] = value
    }

    set(entity: u32, value: T): void {
        this._values[<i32>entity] = value
    }

    get(entity: u32): T {
        return this._values[<u32>entity]
    }

    has(entity: u32): bool {
        const world = this._world
        return world.hasEntity(entity)
            && world.hasComponent(entity, this._id)
    }

    remove(entity: u32): void {
        this._world.removeComponent(entity, this._id)
    }
}

export const flagComponentSet_ID = idof<FlagComponentSet>()
export const i8ComponentSet_ID = idof<ComponentSet<i8>>()
export const i16ComponentSet_ID = idof<ComponentSet<i16>>()
export const i32ComponentSet_ID = idof<ComponentSet<i32>>()
export const u8ComponentSet_ID = idof<ComponentSet<u8>>()
export const u16ComponentSet_ID = idof<ComponentSet<u16>>()
export const u32ComponentSet_ID = idof<ComponentSet<u32>>()
export const f32ComponentSet_ID = idof<ComponentSet<f32>>()

// export const i8TupleComponentSet = idof<ComponentSet<Tuple<i8>>>()
// export const i16TupleComponentSet = idof<ComponentSet<Tuple<i16>>>()
// export const i32TupleComponentSet = idof<ComponentSet<Tuple<i32>>>()
// export const u8TupleComponentSet = idof<ComponentSet<Tuple<u8>>>()
// export const u16TupleComponentSet = idof<ComponentSet<Tuple<u16>>>()
// export const u32TupleComponentSet = idof<ComponentSet<Tuple<u32>>>()
// export const f32TupleComponentSet = idof<ComponentSet<Tuple<f32>>>()

// export const i8TripleComponentSet = idof<ComponentSet<Triple<i8>>>()
// export const i16TripleComponentSet = idof<ComponentSet<Triple<i16>>>()
// export const i32TripleComponentSet = idof<ComponentSet<Triple<i32>>>()
// export const u8TripleComponentSet = idof<ComponentSet<Triple<u8>>>()
// export const u16TripleComponentSet = idof<ComponentSet<Triple<u16>>>()
// export const u32TripleComponentSet = idof<ComponentSet<Triple<u32>>>()
// export const f32TripleComponentSet = idof<ComponentSet<Triple<f32>>>()
