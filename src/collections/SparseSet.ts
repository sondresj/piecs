import { ArrayType } from './types'
import Vector from './Vector'

export default class SparseSet implements Iterable<number> {
    private dense: Vector<number>
    private indices = new Vector<number>({ sparse: true, type: 'pointer' })

    constructor(type: ArrayType) {
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

    [Symbol.iterator](): IterableIterator<number> {
        return this.dense[Symbol.iterator]()
    }
}
