
export type StructSchema = {
    readonly type: Exclude<SizeT, 'char'>
    // readonly length: 1 // isomorphic?
} | {
    readonly type: Extract<SizeT, 'char'>
    readonly length: number
}

export type PrimitiveFromSizeT<T extends SizeT> = T extends 'char' ? string : number
type Next<I extends number> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, never][I]

type _Struct<Schemas extends readonly StructSchema[], L extends number = 0> = L extends never ? [] : Schemas[L] extends undefined ? [] : [PrimitiveFromSizeT<Schemas[L]['type']>, ..._Struct<Schemas, Next<L>>];
type Struct<Schemas extends readonly StructSchema[]> = _Struct<Schemas>

type SizeT =
    | `uint${8 | '8c' | 16 | 32 /*| 64*/}`
    | `int${8 | 16 | 32 /*| 64*/}`
    | `float${32 | 64}`
    | 'double'
    | 'char'

export type TypedArrayConstructor =
    | Uint8ArrayConstructor
    | Uint8ClampedArrayConstructor
    | Uint16ArrayConstructor
    | Uint32ArrayConstructor
    | Int8ArrayConstructor
    | Int16ArrayConstructor
    | Int32ArrayConstructor
    | Float32ArrayConstructor
    | Float64ArrayConstructor

const types: Record<SizeT, TypedArrayConstructor> = {
    int8: Int8Array,
    int16: Int16Array,
    int32: Int32Array,
    uint8: Uint8Array,
    uint8c: Uint8ClampedArray,
    uint16: Uint16Array,
    uint32: Uint32Array,
    float32: Float32Array,
    float64: Float64Array,
    /**
     * Alias for float64
     */
    double: Float64Array,
    char: Uint16Array
}

const viewGetters: Record<SizeT, Extract<keyof DataView, `get${string}`>> = {
    int8: 'getInt8',
    int16: 'getInt16',
    int32: 'getInt32',
    uint8: 'getUint8',
    uint8c: 'getUint8',
    uint16: 'getUint16',
    uint32: 'getUint32',
    float32: 'getFloat32',
    float64: 'getFloat64',
    double: 'getFloat64',
    char: 'getUint16'
}
const viewSetters: Record<SizeT, Extract<keyof DataView, `set${string}`>> = {
    int8: 'setInt8',
    int16: 'setInt16',
    int32: 'setInt32',
    uint8: 'setUint8',
    uint8c: 'setUint8',
    uint16: 'setUint16',
    uint32: 'setUint32',
    float32: 'setFloat32',
    float64: 'setFloat64',
    double: 'setFloat64',
    char: 'setUint16'
}

export const sizeof = (t: SizeT): number => {
    return types[t].BYTES_PER_ELEMENT
}
// export const stringSize = (str: string): number => {
//     return str.length * sizeof('char')
// }

const sizeofStruct = (schemas: readonly StructSchema[]) => {
    return schemas.reduce((total, def) => {
        let size = sizeof(def.type)
        if (def.type === 'char') {
            size *= def.length
        }
        return total + size
    }, 0)
}

type Reader<S extends readonly StructSchema[]> = (view: DataView) => Struct<S>
const createReader = <S extends readonly StructSchema[]>(schemas: S): Reader<S> => {
    const readers = schemas.map(schema => {
        const size_t = sizeof(schema.type)
        const getter = viewGetters[schema.type]

        if (schema.type === 'char') {
            return (view: DataView, struct: any[], offset: number): number => {
                const charCodes: number[] = []
                for (let i = 0; i < schema.length; i++) {
                    const index = offset + i * size_t
                    const charCode = view[getter](index, true) as number
                    if (charCode === 0) break // 0 terminator
                    charCodes.push(charCode) // little-endian. default is false here, dunno why since little endian is far more common
                }
                struct.push(String.fromCharCode(...charCodes))
                return offset + schema.length * size_t
            }
        }

        return (view: DataView, struct: any[], offset: number): number => {
            struct.push(view[getter](offset, true))
            return offset + size_t
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

type Writer<S extends readonly StructSchema[]> = (view: DataView, struct: Struct<S>) => void
const createWriter = <S extends readonly StructSchema[]>(schemas: S): Writer<S> => {
    const writers = schemas.map((schema, i) => {
        const size_t = sizeof(schema.type)
        const setter = viewSetters[schema.type]

        if (schema.type === 'char') {
            return (view: DataView, struct: Struct<S>, offset: number): number => {
                const string = struct[i] as string
                for (let chIdx = 0; chIdx < schema.length; chIdx++) {
                    const charCode = string.charCodeAt(chIdx)
                    if (charCode === 0) break
                    const bufIndex = offset + chIdx * size_t
                    view[setter](bufIndex, charCode as never, true)
                }
                return offset + schema.length * size_t
            }
        }
        return (view: DataView, struct: Struct<S>, offset: number): number => {
            const value = struct[i] as never
            view[setter](offset, value, true)
            return offset + size_t
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


export class StructVector<S extends ReadonlyArray<StructSchema>> {
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

