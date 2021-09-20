export type StructValueType =
    | `uint${8 | '8c' | 16 | 32 | 64}`
    | `int${8 | 16 | 32 | 64}`
    | `float${32 | 64}`
    | `char(${number})`

type SizeType = Exclude<StructValueType, `char(${number})`> | 'char'

export type PrimitiveForValueType<T extends StructValueType> = T extends `char(${number})`
    ? string
    : T extends `${string}int64`
        ? bigint
        : number

export type Struct<Values extends readonly StructValueType[]> = {
    readonly [P in keyof Values]: Values[P] extends StructValueType ? PrimitiveForValueType<Values[P]> : never
}

const sizes: Record<SizeType, number> = {
    int8: Int8Array.BYTES_PER_ELEMENT,
    int16: Int16Array.BYTES_PER_ELEMENT,
    int32: Int32Array.BYTES_PER_ELEMENT,
    int64: BigInt64Array.BYTES_PER_ELEMENT,
    uint8: Uint8Array.BYTES_PER_ELEMENT,
    uint8c: Uint8ClampedArray.BYTES_PER_ELEMENT,
    uint16: Uint16Array.BYTES_PER_ELEMENT,
    uint32: Uint32Array.BYTES_PER_ELEMENT,
    uint64: BigUint64Array.BYTES_PER_ELEMENT,
    float32: Float32Array.BYTES_PER_ELEMENT,
    float64: Float64Array.BYTES_PER_ELEMENT,
    char: Uint16Array.BYTES_PER_ELEMENT,
}

const viewGetters: Record<SizeType, Extract<keyof DataView, `get${string}`>> = {
    int8: 'getInt8',
    int16: 'getInt16',
    int32: 'getInt32',
    int64: 'getBigInt64',
    uint8: 'getUint8',
    uint8c: 'getUint8',
    uint16: 'getUint16',
    uint32: 'getUint32',
    uint64: 'getBigUint64',
    float32: 'getFloat32',
    float64: 'getFloat64',
    char: 'getUint16'
}
const viewSetters: Record<SizeType, Extract<keyof DataView, `set${string}`>> = {
    int8: 'setInt8',
    int16: 'setInt16',
    int32: 'setInt32',
    int64: 'setBigInt64',
    uint8: 'setUint8',
    uint8c: 'setUint8',
    uint16: 'setUint16',
    uint32: 'setUint32',
    uint64: 'setBigUint64',
    float32: 'setFloat32',
    float64: 'setFloat64',
    char: 'setUint16'
}

export const sizeof = (t: StructValueType): number => {
    const charMatch = t.match(/char\((\d+)\)/)
    if (charMatch) {
        return sizes.char * Number(charMatch[1])
    }
    return sizes[t as SizeType]
}

const sizetype = (value: StructValueType): SizeType => {
    if (value.startsWith('char')) return 'char'
    return value as SizeType
}

const sizeofStruct = (schemas: readonly StructValueType[]) => {
    return schemas.reduce((total, valueType) => {
        return total + sizeof(valueType)
    }, 0)
}

type Reader<S extends readonly StructValueType[]> = (view: DataView) => Struct<S>
const createReader = <S extends readonly StructValueType[]>(valueTypes: S): Reader<S> => {
    const readers = valueTypes.map(valueType => {
        const size = sizeof(valueType)
        const sizeType = sizetype(valueType)
        const getter = viewGetters[sizeType]

        if (sizeType === 'char') {
            const charSize = sizes.char
            const length = size / charSize
            return (view: DataView, struct: any[], offset: number): number => {
                const charCodes: number[] = []
                for (let i = 0; i < length; i++) {
                    const index = offset + i * charSize
                    const charCode = view[getter](index, true) as number
                    if (charCode === 0) break // 0 terminator
                    charCodes.push(charCode) // little-endian. default is false here, dunno why since little endian is far more common
                }
                struct.push(String.fromCharCode(...charCodes))
                return offset + size
            }
        }

        return (view: DataView, struct: any[], offset: number): number => {
            struct.push(view[getter](offset, true))
            return offset + size
        }
    })

    return (view) => {
        const struct: any[] = []
        let viewOffset = 0
        for (let i = 0; i < readers.length; i++) {
            const reader = readers[i]!
            viewOffset = reader(view, struct, viewOffset)
        }
        return struct as any
    }
}

type Writer<S extends readonly StructValueType[]> = (view: DataView, struct: Struct<S>) => void
const createWriter = <S extends readonly StructValueType[]>(schemas: S): Writer<S> => {
    const writers = schemas.map((valueType, i) => {
        const size = sizeof(valueType)
        const sizeType = sizetype(valueType)
        const setter = viewSetters[sizeType]

        if (sizeType === 'char') {
            return (view: DataView, struct: Struct<S>, offset: number): number => {
                const string = struct[i] as string
                const charSize = sizes.char
                const length = Math.min(string.length, size / charSize)
                for (let chIdx = 0; chIdx < length; chIdx++) {
                    const charCode = string.charCodeAt(chIdx)
                    if (charCode === 0) break
                    const bufIndex = offset + chIdx * charSize
                    view[setter](bufIndex, charCode as never, true)
                }
                return offset + size
            }
        }
        return (view: DataView, struct: Struct<S>, offset: number): number => {
            const value = struct[i] as never
            view[setter](offset, value, true)
            return offset + size
        }
    })
    return (view, struct) => {
        let viewOffset = 0
        for (let i = 0; i < writers.length; i++) {
            const writer = writers[i]!
            viewOffset = writer(view, struct, viewOffset)
        }
    }
}
// Todo, separate sparse vector to own class
export type StructVectorOptions = {
    initialCapacity?: number
    growFactor?: number
    sparse?: boolean
}

const defaultOptions: Required<StructVectorOptions> = {
    initialCapacity: 1 << 8,
    growFactor: 1.5,
    sparse: false
}

export class StructVector<S extends ReadonlyArray<StructValueType>> {
    private _buffer: ArrayBuffer
    private _bytesPerElement: number
    private _reader: Reader<S>
    private _writer: Writer<S>
    private _sparse: boolean
    private _capacity: number
    private _growFactor: number
    private _length = 0

    constructor(readonly valueTypes: S, options?: StructVectorOptions) {
        const {
            initialCapacity,
            sparse,
            growFactor
        } = {
            ...defaultOptions,
            ...options
        }
        this._bytesPerElement = sizeofStruct(valueTypes)
        this._buffer = new ArrayBuffer(initialCapacity * this._bytesPerElement)
        this._capacity = initialCapacity
        this._sparse = sparse
        this._growFactor = Math.max(1.01, growFactor)
        this._reader = createReader(valueTypes)
        this._writer = createWriter(valueTypes)
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

    private grow = (indexToAccomodate: number) => {
        if (indexToAccomodate < this._capacity)
            return

        while (indexToAccomodate >= this._capacity) {
            this._capacity = Math.ceil(this._capacity * this._growFactor)
        }
        const newBuffer = new ArrayBuffer(this._capacity * this._bytesPerElement)
        new Uint8Array(newBuffer).set(new Uint8Array(this._buffer), 0)
        this._buffer = newBuffer
    }

    push = (value: Struct<S>) => {
        this.grow(this._length)
        const offset = this._length * this._bytesPerElement
        const view = new DataView(this._buffer, offset)
        this._writer(view, value)
        return ++this._length
    }

    pop = (): Struct<S> | undefined => {
        if (this._length === 0) return undefined

        const offset = (--this._length) * this._bytesPerElement
        const view = new DataView(this._buffer, offset)
        return this._reader(view)
    }

    get = (index: number): Struct<S> | undefined => {
        if (!this.sparse && index >= this._length) return undefined

        const offset = index * this._bytesPerElement
        const view = new DataView(this._buffer, offset)
        return this._reader(view)
    }

    set = (index: number, value: Struct<S>) => {
        if (!this._sparse && index >= this._length) {
            throw new Error(`Index ${index} is out of bounds`)
        }
        if (this.sparse && index >= this._length) {
            this._length = index + 1
            this.grow(this._length)
        }
        const offset = index * this._bytesPerElement
        const view = new DataView(this._buffer, offset)
        this._writer(view, value)
        return this
    }

}
