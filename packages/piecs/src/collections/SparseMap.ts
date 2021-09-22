import { Vector, VectorValueType } from './Vector'


// TODO: improve types here, to infer T based on valueType argument
export class SparseMap<T = number> {
    private _keys: Vector<number> // dense
    private _values: Vector<T> // also dense
    private _indices = new Vector<number>('pointer', { sparse: true })

    constructor(
        keyType: Exclude<VectorValueType, 'any'>,
        valueType: T extends number ? Exclude<VectorValueType, 'any'> : 'any'
    ) {
        this._keys = new Vector<number>(keyType) // dense
        this._values = new Vector<T>(valueType) // also dense
    }

    get size() {
        return this._keys.length
    }

    has = (key: number): boolean => {
        const index = this._indices.get(key)
        return index !== undefined
            && index < this._keys.length
            && this._keys.get(index) === key
    }

    set = (key: number, value: T): this => {
        if (this.has(key)) {
            const index = this._indices.get(key)!
            this._values.set(index, value)
            return this
        }

        const index = this._keys.push(key) - 1
        const valueIndex = this._values.push(value) - 1 // Should be in sync with keys
        if (index !== valueIndex) {
            throw new Error('My MemSpas has been critically hit!')
        }
        this._indices.set(key, index)
        return this
    }

    get = (key: number): T | undefined => {
        if (!this.has(key)) return undefined

        const index = this._indices.get(key)!
        return this._values.get(index)
    }

    delete = (key: number): this => {
        if (!this.has(key)) return this

        const swap = this._keys.pop()!
        const swapValue = this._values.pop()!
        if (swap !== key) {
            const index = this._indices.get(key)!
            this._keys.set(index, swap)
            this._values.set(index, swapValue)
            this._indices.set(swap, index)
        }

        return this
    }

    pop = (): [number, T] | undefined => {
        const key = this._keys.pop()
        return key ? [
            key,
            this._values.pop()!
        ] : undefined
    }

    // forEach = (callback: (key: number, value: T) => void) => {
    //     for (let i = 0, len = this._keys.length; i < len; i++) {
    //         callback(i, this._values.get(i)!)
    //     }
    // }

    // *keys(): IterableIterator<number> {
    //     return this._keys[Symbol.iterator]()
    // }
    // *values(): IterableIterator<T> {
    //     for (const i of this._keys) {
    //         yield this._values.get(i)!
    //     }
    // }
    // *entries(): IterableIterator<[number, T]> {
    //     for (const i of this._keys) {
    //         yield [i, this._values.get(i)!]
    //     }
    // }
}