import Vector from './Vector'

export default class SparseMap<T> implements Iterable<[number, T]> {
    private keys = new Vector() // dense
    private values: T[] = [] // also dense TODO vectorize if T extends number
    private indices = new Vector({ sparse: true })

    constructor(entries: [number, T][] = []) {
        for (let i = 0; i < entries.length; i++) {
            const [key, value] = entries[i]!
            const index = this.keys.push(key) - 1
            this.values[index] = value
            this.indices.set(key, index)
        }
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
            this.values[index] = value
            return this
        }

        const index = this.keys.push(key) - 1
        this.indices.set(key, index)
        this.values[index] = value
        return this
    }

    get = (key: number): T | undefined => {
        if (!this.has(key)) return undefined

        const index = this.indices.get(key)!
        return this.values[index]
    }

    delete = (key: number): this => {
        if (!this.has(key)) return this

        const index = this.indices.get(key)!
        const swap = this.keys.pop()!
        const swapValue = this.values.pop()!
        if (swap !== key) {
            this.keys.set(index, swap)
            this.values[index] = swapValue
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
            yield [i, this.values[i]!]
        }
    }
}
