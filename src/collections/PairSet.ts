import type { ArrayClass, TypedArray } from './types'
import { isTypedArray } from './utils'
export class SparsePairSet {
    private _array: TypedArray
    private _capacity: number

    constructor(
        private maxKey1: number,
        private maxKey2: number,
        ArrayClass: ArrayClass = Float64Array
    ) {
        if (maxKey1 > 0xffff)
            throw new Error(`maxKey1 cannot be larger than 65535`)
        if (maxKey2 > 0xffff)
            throw new Error(`maxKey2 cannot be larger than 65535`)
        this._capacity = maxKey1 << 16 | maxKey2
        this._array = new ArrayClass(this._capacity)
    }

    private assertInRange = (key1: number, key2: number) => {
        if (key1 > this.maxKey1)
            throw new Error(`key1 ${key1} out of bounds`)
        if (key2 > this.maxKey2)
            throw new Error(`key2 ${key2} out of bounds`)
    }

    set = (key1: number, key2: number, value: number) => {
        this.assertInRange(key1, key2)
        this._array[key1 << 16 | key2] = value
        return this
    }

    get = (key1: number, key2: number) => {
        this.assertInRange(key1, key2)
        return this._array[key1 << 16 | key2]
    }

    // has = (key: number, value: number) => {
    //     this.assertInRange(key, value)
    //     return this._array[key<<16 | value] === value
    // }

    // delete = (key1: number, key2: number) => {
    //     this.assertInRange(key1, key2)
    //     this._array[key1<<16 | key2] = 0
    //     return this
    // }

    subArray = (key1: number) => {
        if (isTypedArray(this._array))
            return this._array.subarray(key1 << 16, key1 << 16 | this.maxKey2)
        return this._array.slice(key1 << 16, key1 << 16 | this.maxKey2)
    }

    // values for key = [key << 16, key << 16 | 0xffff]

    // *keys(a: number) {
    //     for (const pair of this._set) {
    //         if (pair >> 16 & a) {
    //             yield pair & mask
    //         }
    //     }
    // }

    // *values(b: number) {
    //     for (const pair of this._set) {
    //         if (pair & b) {
    //             yield pair >> 16 & mask
    //         }
    //     }
    // }

    // *entries(): IterableIterator<[key: number, value: number]> {
    //     for (const pair of this._set) {
    //         yield [
    //             pair >> 16 & mask,
    //             pair & mask
    //         ]
    //     }
    // }

    // *[Symbol.iterator](): IterableIterator<[key: number, value: number]> {
    //     for (const pair of this._set) {
    //         yield [
    //             pair >> 16 & mask,
    //             pair & mask
    //         ]
    //     }
    // }
}
