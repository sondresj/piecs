import { SparseSet } from './SparseSet'

// const pair = (a: number, b: number) => {
//     return a << 16 | b
// }

// const unpair = (pair: number): [a: number, b: number] => {
//     const a = pair >> 16 & 0xffff
//     const b = pair & 0xffff
//     return [a, b]
// }

// const pairHasA = (pair: number, a: number) => {
//     return pair >> 16 & a
// }

// const pairHasB = (pair: number, b: number) => {
//     return pair & b
// }

// const mask = 0xffff

export class SparsePairSet {
    private _set = new SparseSet('uint32')


    // constructor() {

    // }


    get length() {
        return this._set.length
    }

    add = (key: number, value: number) => {
        this._set.add(key << 16 | value)
        return this
    }

    has = (key: number, value: number) => {
        return this._set.has(key << 16 | value)
    }

    delete = (key: number, value: number) => {
        this._set.delete(key << 16 | value)
        return this
    }

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
