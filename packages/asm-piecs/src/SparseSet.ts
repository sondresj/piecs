import { RelativeIndexable } from './RelativeIndexable'
import { Vector } from './Vector'

export class SparseSet extends RelativeIndexable<u32> {
    [key: u32]: u32
    private _dense: Vector
    private _indices: Vector

    constructor(initialSize: u32){
        super()
        this._dense = new Vector(initialSize, f32(1.5), false)
        this._indices = new Vector(initialSize, f32(1.5), true)
    }

    @inline
    get values(): Vector {
        return this._dense
    }

    @inline
    get length(): u32 {
        return this._dense.length
    }

    @inline
    has(value: native<u32>): boolean {
        return value < this._indices.size
            && unchecked(this._indices[value]) < this._dense.length
            && unchecked(this._dense[unchecked(this._indices[value])]) == value
    }

    @inline
    @operator('[]') // doesn't work from js for some reason,
    get(index: u32): u32 {
        assert(index < this._dense.length, `SparseSet: Index ${index} is out of bounds. Check SparseSet.length > index`)
        return this._dense[index]
    }

    @inline
    @operator('{}') // doesn't work from js for some reason,
    uget(index: u32): u32 {
        return unchecked(this._dense[index])
    }

    @inline
    add(value: native<u32>): this {
        if(!this.has(value)) {
            unchecked(this._indices[value] = this._dense.push(value) - 1)
        }
        return this
    }

    @inline
    pop (): u32 {
        return this._dense.pop()
    }

    @inline
    delete(value: native<u32>): this {
        if(this.has(value)) {
            // const index = this._indices
            const swap = assert(this._dense.pop(), `SparseSet: Internal error`)
            if(swap !== value) {
                const index = unchecked(this._indices[value])
                unchecked(this._dense[index] = swap)
                unchecked(this._indices[swap] = index)
            }
        }
        return this
    }
}