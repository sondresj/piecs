import { ArrayClass, TypedArray } from './types'
import { VectorValueType } from './Vector'

const MAX_INT_CAPACITY = 4294967295
const MAX_FLOAT_CAPACITY = Number.MAX_SAFE_INTEGER

export const getArrayConstructor = (capacity: number, type: VectorValueType): ArrayClass => {
    if ((type.includes('int') || type === 'pointer') && capacity > MAX_INT_CAPACITY)
        throw new Error(`Capacity ${capacity} out of bounds`)

    if (type.includes('float') && capacity > MAX_FLOAT_CAPACITY)
        throw new Error(`Capacity ${capacity} out of bounds`)
    switch (type) {
        case 'int8': return Int8Array
        case 'uint8': return Uint8Array
        case 'uint8c': return Uint8ClampedArray
        case 'int16': return Int16Array
        case 'uint16': return Uint16Array
        case 'int32': return Int32Array
        case 'uint32': return Uint32Array
        // case 'int64': return BigInt64Array
        // case 'uint64': return BigUint64Array
        case 'float32': return Float32Array
        case 'float64': return Float64Array
        case 'pointer': return capacity <= 1 << 8
            ? Uint8Array
            : capacity <= 1 << 16
                ? Uint16Array
                : Uint32Array
        case 'any':
        default: return Array
    }
}

export const reallocArray = <T>(array: ArrayLike<T>, type: VectorValueType, newSize: number): Exclude<TypedArray, Array<any>> | T[] => {
    if (type === 'any') {
        const reallocated = Array.from(array)
        reallocated.length = newSize
        return array as any
    }
    const ArrayType = getArrayConstructor(newSize, type)
    const reallocated = new ArrayType(newSize) as Exclude<TypedArray, Array<any>>
    reallocated.set(array as any) // array is ArrayLike<number> here
    return reallocated
}

export const isTypedArray = (array: any): array is Exclude<TypedArray, Array<any>> => !!('BYTES_PER_ELEMENT' in array)
