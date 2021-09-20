
// export type StructSchema = {
//     readonly type: Exclude<SizeT, 'char'>
//     // readonly length: 1 // isomorphic?
// } | {
//     readonly type: Extract<SizeT, 'char'>
//     readonly length: number
// }

type ValueType =
    | `uint${8 | '8c' | 16 | 32 /*| 64*/}`
    | `int${8 | 16 | 32 /*| 64*/}`
    | `float${32 | 64}`
    | `char(${number})`

type SizeType = Exclude<ValueType, `char(${number})`> | 'char'

export type PrimitiveFromSizeT<T extends ValueType> = T extends `char(${number})` ? string : number
type Next<I extends number> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, never][I]

type _Struct<Schemas extends readonly ValueType[], L extends number = 0> = L extends never ? [] : Schemas[L] extends undefined ? [] : [PrimitiveFromSizeT<Schemas[L]>, ..._Struct<Schemas, Next<L>>];
type Struct<Schemas extends readonly ValueType[]> = _Struct<Schemas>

const sizes: Record<SizeType, number> = {
    int8: Int8Array.BYTES_PER_ELEMENT,
    int16: Int16Array.BYTES_PER_ELEMENT,
    int32: Int32Array.BYTES_PER_ELEMENT,
    uint8: Uint8Array.BYTES_PER_ELEMENT,
    uint8c: Uint8ClampedArray.BYTES_PER_ELEMENT,
    uint16: Uint16Array.BYTES_PER_ELEMENT,
    uint32: Uint32Array.BYTES_PER_ELEMENT,
    float32: Float32Array.BYTES_PER_ELEMENT,
    float64: Float64Array.BYTES_PER_ELEMENT,
    char: Uint16Array.BYTES_PER_ELEMENT,
}

const viewGetters: Record<SizeType, Extract<keyof DataView, `get${string}`>> = {
    int8: 'getInt8',
    int16: 'getInt16',
    int32: 'getInt32',
    uint8: 'getUint8',
    uint8c: 'getUint8',
    uint16: 'getUint16',
    uint32: 'getUint32',
    float32: 'getFloat32',
    float64: 'getFloat64',
    // double: 'getFloat64',
    char: 'getUint16'
}
const viewSetters: Record<SizeType, Extract<keyof DataView, `set${string}`>> = {
    int8: 'setInt8',
    int16: 'setInt16',
    int32: 'setInt32',
    uint8: 'setUint8',
    uint8c: 'setUint8',
    uint16: 'setUint16',
    uint32: 'setUint32',
    float32: 'setFloat32',
    float64: 'setFloat64',
    // double: 'setFloat64',
    char: 'setUint16'
}

export const sizeof = (t: ValueType): number => {
    const charMatch = t.match(/char\((\d+)\)/)
    if (charMatch) {
        return sizes.char * Number(charMatch[1])
    }
    return sizes[t as SizeType]
}

export const sizetype = (value: ValueType): SizeType => {
    if (value.startsWith('char')) return 'char'
    return value as SizeType
}

const sizeofStruct = (schemas: readonly ValueType[]) => {
    return schemas.reduce((total, valueType) => {
        return total + sizeof(valueType)
    }, 0)
}

type Reader<S extends readonly ValueType[]> = (view: DataView) => Struct<S>
const createReader = <S extends readonly ValueType[]>(valueTypes: S): Reader<S> => {
    const readers = valueTypes.map(valueType => {
        const size = sizeof(valueType)
        const sizeType = sizetype(valueType)
        const getter = viewGetters[sizeType]

        if (sizeType === 'char') {
            return (view: DataView, struct: any[], offset: number): number => {
                const charCodes: number[] = []
                const charSize = sizes.char
                const length = size / charSize
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

type Writer<S extends readonly ValueType[]> = (view: DataView, struct: Struct<S>) => void
const createWriter = <S extends readonly ValueType[]>(schemas: S): Writer<S> => {
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

export class StructVector<S extends ReadonlyArray<ValueType>> {
    private _buffer: ArrayBuffer
    private bytesPerElement: number
    private reader: Reader<S>
    private writer: Writer<S>
    constructor(readonly schemas: S, capacity: number) {
        this.bytesPerElement = sizeofStruct(schemas)
        this._buffer = new ArrayBuffer(capacity * this.bytesPerElement)
        this.reader = createReader(schemas)
        this.writer = createWriter(schemas)
    }

    length = 0

    private grow = () => {
        const currentByteLength = this._buffer.byteLength
        if (this.length * this.bytesPerElement >= currentByteLength - this.bytesPerElement) {
            const newByteLengthCapacity = Math.ceil(currentByteLength * 1.5)
            const newBuffer = new ArrayBuffer(newByteLengthCapacity)
            new Uint8Array(newBuffer).set(new Uint8Array(this._buffer))
            this._buffer = newBuffer
        }
    }

    get = (index: number): Struct<S> | undefined => {
        if (index >= this.length) return undefined

        const offset = index * this.bytesPerElement
        const view = new DataView(this._buffer, offset)
        return this.reader(view)
    }

    push = (value: Struct<S>) => {
        this.grow()
        const offset = this.length * this.bytesPerElement
        const view = new DataView(this._buffer, offset)
        this.writer(view, value)
        return ++this.length
    }

    pop = (): Struct<S> | undefined => {
        if (this.length === 0) return undefined

        const offset = this.length - this.bytesPerElement
        const view = new DataView(this._buffer, offset)
        this.length--
        return this.reader(view)
    }

    set = (index: number, value: Struct<S>) => {
        if (index >= this.length) {
            // TODO: maybe check capacity instead? or be sparsy?
            throw new Error(`Index ${index} out of bounds`)
        }
        const offset = index * this.bytesPerElement
        const view = new DataView(this._buffer, offset)
        this.writer(view, value)
        return this
    }

}
