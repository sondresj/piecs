
export type ArrayType =
| `uint${8 | '8c' | 16 | 32}`
| `int${8 | 16 | 32}`
| `float${32 | 64}`
| 'pointer'
| 'any'

export type ArrayClass =
| Uint8ArrayConstructor
| Uint8ClampedArrayConstructor
| Uint16ArrayConstructor
| Uint32ArrayConstructor
| Int8ArrayConstructor
| Int16ArrayConstructor
| Int32ArrayConstructor
| Float32ArrayConstructor
| Float64ArrayConstructor
| ArrayConstructor

export type TypedArray =
| Uint8Array
| Uint8ClampedArray
| Uint16Array
| Uint32Array
| Int8Array
| Int16Array
| Int32Array
| Float32Array
| Float64Array
| any[]
