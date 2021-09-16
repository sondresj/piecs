import { ArrayType } from './types'
import { Vector } from './Vector'

export class SparseSet {
    private dense: Vector<number>
    private indices = new Vector<number>({ sparse: true, type: 'pointer' })

    constructor(type: Exclude<ArrayType, 'any'>) {
        this.dense = new Vector<number>({ type })
    }

    get length() {
        return this.dense.length
    }

    has = (value: number): boolean => {
        const index = this.indices.get(value)
        return index !== undefined
            && index < this.dense.length
            && this.dense.get(index) === value
    }

    add = (value: number): this => {
        if (this.has(value)) this
        this.indices.set(value, this.dense.push(value) - 1)

        return this
    }

    get = (index: number): number | undefined => {
        return this.dense.get(index)
    }

    pop = (): number | undefined => {
        return this.dense.pop()
    }

    delete = (value: number): this => {
        if (!this.has(value)) return this

        const index = this.indices.get(value)!
        const swap = this.dense.pop()!
        if (swap !== value) {
            this.dense.set(index, swap)
            this.indices.set(swap, index)
        }

        return this
    }

    forEach = (callback: (value: number, index: number) => void) => {
        this.dense.forEach(callback)
    }
}

export class SparseSet_Array {
    private dense: number[] = []
    private indices: number[] = []
    private _length = 0

    get length() {
        return this._length//this.dense.length
    }

    has = (value: number): boolean => {
        const index = this.indices[value]
        return index !== undefined
            && index < this._length
            && this.dense[index] === value
    }

    add = (value: number): this => {
        if (this.has(value)) this
        this.indices[value] = this._length
        this.dense[this._length++] = value
        return this
    }

    get = (index: number): number | undefined => {
        if (index >= this._length) {
            return undefined
        }
        return this.dense[index]
    }

    pop = (): number | undefined => {
        if (this.length === 0) {
            return undefined
        }
        return this.dense[--this._length]
    }

    delete = (value: number): this => {
        if (!this.has(value)) return this

        const index = this.indices[value]!
        const swap = this.dense[--this._length]!
        if (swap !== value) {
            this.dense[index] = swap
            this.indices[swap] = index
        }

        return this
    }

    forEach = (callback: (value: number, index: number) => void) => {
        for (let i = 0; i < this._length; i++) {
            callback(this.dense[i]!, i)
        }
    }
}
