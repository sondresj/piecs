
export type ArrayClass =
    | Uint8ArrayConstructor
    | Uint8ClampedArrayConstructor
    | Uint16ArrayConstructor
    | Uint32ArrayConstructor
    // | BigUint64ArrayConstructor
    | Int8ArrayConstructor
    | Int16ArrayConstructor
    | Int32ArrayConstructor
    // | BigInt64ArrayConstructor
    | Float32ArrayConstructor
    | Float64ArrayConstructor
    | ArrayConstructor

export type TypedArray =
    | Uint8Array
    | Uint8ClampedArray
    | Uint16Array
    | Uint32Array
    // | BigUint64Array
    | Int8Array
    | Int16Array
    | Int32Array
    // | BigInt64Array
    | Float32Array
    | Float64Array
    | Array<any>

// export type ReadonlyTypedArray<T> = {
//     length: number
//     get: (index: number) => T | undefined
// }
