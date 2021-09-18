import { ArrayType, TypedArray } from './types'
import { getArrayConstructor, isTypedArray, reallocArray } from './utils'

export type VectorConstructorOptions<T = number> = {
    initialCapacity?: number
    growFactor?: number
    sparse?: boolean
} & (T extends number
    ? { type: Exclude<ArrayType, 'any'> }
    : { type?: 'any' }
)

const defaultOptions: Required<VectorConstructorOptions<number>> = {
    initialCapacity: 1 << 8,
    growFactor: 1.5,
    type: 'int32',
    sparse: false
}
export class Vector<T = number> {
    private _array: TypedArray
    private _capacity: number
    private _type: ArrayType
    private _sparse: boolean
    private _growFactor: number
    private _length = 0

    constructor(options?: VectorConstructorOptions<T>) {
        const {
            initialCapacity,
            type,
            sparse,
            growFactor
        } = {
            ...defaultOptions,
            ...options
        }
        const ArrayType = getArrayConstructor(initialCapacity, type)
        this._array = new ArrayType(initialCapacity)
        this._capacity = initialCapacity
        this._type = type
        this._sparse = sparse
        this._growFactor = Math.max(1.01, growFactor)
    }

    private growIfNecessary = () => {
        if (this._length < this._capacity)
            return
        while (this._length >= this._capacity) {
            this._capacity = Math.ceil(this._capacity * this._growFactor)
        }
        this._array = reallocArray(this._array, this._type, this._capacity)
    }

    get length() {
        return this._length
    }
    get capacity() {
        return this._capacity
    }
    get sparse() {
        return this._sparse
    }

    push = (value: T) => {
        this.growIfNecessary()
        this._array[this._length++] = value
        return this._length
    }

    pop = (): T | undefined => {
        if (this._length === 0) {
            return undefined
        }
        return this._array[--this._length]
    }

    get = (index: number): T | undefined => {
        if (!this._sparse && index >= this._length) {
            return undefined
        }
        return this._array[index]
    }

    set = (index: number, value: T) => {
        if (!this._sparse && index >= this._length) {
            throw new Error(`Index ${index} is out of bounds`)
        }
        if (this._sparse && index >= this._length) {
            this._length = index + 1
            this.growIfNecessary()
        }
        this._array[index] = value
        return this
    }

    subArray = () => {
        if (this.sparse) return this._array
        if (isTypedArray(this._array)) return this._array.subarray(0, this._length)
        return this._array.slice(0, this._length)
    }

    forEach = (callback: (value: T, index: number) => void): void => {
        if (this.sparse) {
            this._array.forEach(callback as any)
            return
        }

        for (let i = 0, len = this._length; i < len; i++) {
            callback(this._array[i], i)
        }
    }
}
