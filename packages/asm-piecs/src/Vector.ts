import { RelativeIndexable } from './RelativeIndexable'

// TODO: Could be optimized/improved based on https://github.com/AssemblyScript/assemblyscript/blob/fa42172d2afb3154bd7adfdbdbada65cfc9e4eda/std/assembly/typedarray.ts
export class Vector extends RelativeIndexable<u32> {
    [key: u32]: u32
    private _array: Uint32Array //TypedArray<T>
    private _size: u32
    private _length: u32
    private _sparse: bool
    private _growFactor: f32
    // private _bytesPerElement: number =

    constructor(
        // array: TypedArray<T>,
        size: u32,
        growFactor: number,
        sparse: bool
    ){
        super()
        // this._array = array
        // this._bytesPerElement = sizeof<T>()
        this._size = size //array.byteLength / this._bytesPerElement
        this._array = new Uint32Array(size)
        this._growFactor = f32(Math.max(growFactor, 1.1))
        this._sparse = sparse
    }

    @inline
    get length(): u32 {
        return this._length
    }
    @inline
    get size(): u32 {
        return this._size
    }
    @inline
    get sparse(): bool {
        return this._sparse
    }

    @inline
    private grow(target: u32): void {
        if (target < this._size) {
            return
        }
        while (target >= this._size) {
            this._size = u32(Math.ceil(f32(this._size) * this._growFactor))
        }
        const oldArray = this._array
        this._array = new Uint32Array(this._size)
        memory.copy(this._array.dataStart, oldArray.dataStart, oldArray.length)
    }

    @operator('[]')
    __get(index: u32): u32 {
        assert(this.sparse || index < this._length, `Vector: Index ${index} is out of bounds. Check index < Vector.length`)
        assert(index < this._size, `Vector: Index ${index} is out of bounds. Check index < Vector.size`)
        // return unchecked(this._array[index])
        return load<u32>(this._array.dataStart + <usize>index)
    }

    @operator('[]=')
    __set(index: u32, value: native<u32>): void {
        assert(this._sparse || index < this._length, `Vector: Index ${index} is out of bounds. Check index < Vector.length`)
        this.grow(index)
        // unchecked(this._array[index] = value)
        store<u32>(this._array.dataStart + <usize>index, value)
    }

    @inline
    push(value: native<u32>): u32 {
        this.grow(this._length)
        unchecked(this._array[this._length++] = value)
        return this._length
    }

    @inline
    pop(): u32 {
        assert(this._length, `Vector: Cannot pop empty vector. Check Vector.length > 0 before popping`)
        return unchecked(this._array[--this._length])
    }

    @inline
    subArray(): Uint32Array {
        if(this._sparse) return this._array
        return this._array.subarray(0, this._length)
    }
}