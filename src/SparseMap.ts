import { ArrayType } from './types'
import Vector from './Vector'

export default class SparseMap<T> implements Iterable<[number, T]> {
    private keys: Vector<number> // dense
    private values: Vector<T> // also dense
    private indices = new Vector<number>({ sparse: true, type: 'pointer' })

    constructor(keyType: ArrayType, valueType: ArrayType) {
        this.keys = new Vector<number>({ type: keyType }) // dense
        this.values = new Vector<T>({ type: valueType }) // also dense
    }

    get size() {
        return this.keys.length
    }

    has = (key: number): boolean => {
        const index = this.indices.get(key)
        return index !== undefined
            && index < this.keys.length
            && this.keys.get(index) === key
    }

    set = (key: number, value: T): this => {
        if (this.has(key)) {
            const index = this.indices.get(key)!
            this.values.set(index, value)
            return this
        }

        const index = this.keys.push(key) - 1
        const valueIndex = this.values.push(value) - 1 // Should be in sync with keys
        if (index !== valueIndex) {
            throw new Error('My MemSpas has been critically hit!')
        }
        this.indices.set(key, index)
        return this
    }

    get = (key: number): T | undefined => {
        if (!this.has(key)) return undefined

        const index = this.indices.get(key)!
        return this.values.get(index)
    }

    delete = (key: number): this => {
        if (!this.has(key)) return this

        const index = this.indices.get(key)!
        const swap = this.keys.pop()!
        const swapValue = this.values.pop()!
        if (swap !== key) {
            this.keys.set(index, swap)
            this.values.set(index, swapValue)
            this.indices.set(swap, index)
        }

        return this
    }

    pop = (): [number, T] | undefined => {
        const key = this.keys.pop()
        return key ? [
            key,
            this.values.pop()!
        ] : undefined
    }

    /**
     * Key value pair appears in random order, not in order of insertion
     */
    *[Symbol.iterator](): Iterator<[number, T], any, undefined> {
        for (let i = 0; i < this.keys.length; i++) {
            yield [i, this.values.get(i)!]
        }
    }
}
