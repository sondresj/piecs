import { SparseSet } from './SparseSet'
import { ArrayType } from './types'

export const cantorPair = (a: number, b: number) => {
    const sum = a + b
    return (sum * (sum + 1) >> 1) + b
}

// pair = (a**2 + 2ab + a + b**2 + b)/2 + b
// pair = (a + b)(a + b + 1)/2 + b

// a =

// export const aFromPairAndB = (pair: number, b: number) => {

// }

export class SparseCantorSet {
    private _set: SparseSet
    constructor(type: Extract<ArrayType, `uint${number}` | 'pointer'>) {
        this._set = new SparseSet(type)
    }

    get length() {
        return this._set.length
    }

    add = (a: number, b: number) => {
        this._set.add(cantorPair(a, b))
        return this
    }

    has = (a: number, b: number) => {
        return this._set.has(cantorPair(a, b))
    }

    delete = (a: number, b: number) => {
        this._set.delete(cantorPair(a, b))
        return this
    }
}

export class CantorSet {
    private _set: Set<number>
    constructor() {
        this._set = new Set()
    }

    get length() {
        return this._set.size
    }

    add = (a: number, b: number) => {
        this._set.add(cantorPair(a, b))
        return this
    }

    has = (a: number, b: number) => {
        return this._set.has(cantorPair(a, b))
    }

    delete = (a: number, b: number) => {
        this._set.delete(cantorPair(a, b))
        return this
    }

    valuesForA = () => {
        return null
    }

    valuesForB = () => {
        return null
    }
}
