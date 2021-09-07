type TypedArrayConstructor =
    | Uint8ArrayConstructor
    | Uint16ArrayConstructor
    | Uint32ArrayConstructor
    | Int8ArrayConstructor
    | Int16ArrayConstructor
    | Int32ArrayConstructor

type TypedArray =
    | Uint8Array
    | Uint16Array
    | Uint32Array
    | Int8Array
    | Int16Array
    | Int32Array

const getArrayConstructor = (capacity: number, singed = false): TypedArrayConstructor => {
    if (capacity > 4294967295) throw new Error(`Capacity ${capacity} out of bounds`)
    return capacity <= 1 << 8
        ? singed ? Int8Array : Uint8Array
        : capacity <= 1 << 16
            ? singed ? Int16Array : Uint16Array
            : singed ? Int32Array : Uint32Array
}

const realloc = (array: ArrayLike<number>, capacity: number, signed = false) => {
    const ArrayType = getArrayConstructor(capacity, signed)
    const reallocated = new ArrayType(capacity)
    reallocated.set(array)
    return reallocated
}

export type VectorConstructorOptions = {
    initialCapacity: number
    signed: boolean
    sparse: boolean
}

const defaultOptions: VectorConstructorOptions = {
    initialCapacity: 1 << 8,
    signed: false,
    sparse: false
}
export default class Vector implements Iterable<number> {
    private array: TypedArray
    private _capacity: number
    private _signed: boolean
    private _sparse: boolean
    private _length = 0

    constructor(options?: Partial<VectorConstructorOptions>) {
        const {
            initialCapacity,
            signed,
            sparse
        } = {
            ...defaultOptions,
            ...options
        }
        const ArrayType = getArrayConstructor(initialCapacity, signed)
        this.array = new ArrayType(initialCapacity)
        this._capacity = initialCapacity
        this._signed = signed
        this._sparse = sparse
    }

    private growIfNecessary = () => {
        if (this._length >= this._capacity) {
            this._capacity = Math.max(1, this._capacity * Math.ceil(1.5))
            this.array = realloc(this.array, this._capacity, this._signed)
        }
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

    push = (value: number) => {
        this.growIfNecessary()
        this.array[this._length++] = value
        return this._length
    }

    pop = () => {
        if (this._length === 0) return undefined
        return this.array[--this._length]
    }

    get = (index: number) => {
        if (!this._sparse && index > this._length - 1) return undefined
        return this.array[index]
    }

    set = (index: number, value: number) => {
        if (!this._sparse && index > this._length - 1) {
            throw new Error(`Index ${index} is out of bounds`)
        }
        this.array[index] = value
        return this
    }

    *values(): IterableIterator<number> {
        for (let i = 0; i < this._length; i++) {
            yield this.array[i]!
        }
    }

    *[Symbol.iterator](): IterableIterator<number> {
        for (let i = 0; i < this._length; i++) {
            yield this.array[i]!
        }
    }

}
