export class SparseSet {
    [key: i32]: u32
    private _dense: Array<u32>
    private _indices: Array<i32>

    constructor(initialSize: u32) {
        this._dense = new Array()
        this._indices = new Array(initialSize)
    }

    @inline
    get values(): Array<u32> {
        return this._dense
    }

    @inline
    get length(): i32 {
        return this._dense.length
    }

    @inline
    has(value: u32): bool {
        if (value >= <u32> this._indices.length)
            return false
        const index = unchecked(this._indices[value])
        return index < this._dense.length
            && unchecked(this._dense[index]) == value
    }

    @inline
    @operator('[]') // doesn't work from js for some reason,
    get(index: i32): u32 {
        assert(index < this._dense.length, `SparseSet: Index ${index} is out of bounds. Check SparseSet.length > index`)
        return this._dense[index]
    }

    @inline
    @operator('{}') // doesn't work from js for some reason,
    uget(index: i32): u32 {
        return unchecked(this._dense[index])
    }

    @inline
    add(value: u32): this {
        if (!this.has(value)) {
            this._indices[<i32>value] = this._dense.push(value) - 1
        }
        return this
    }

    @inline
    pop(): u32 {
        return this._dense.pop()
    }

    @inline
    delete(value: u32): this {
        if (this.has(value)) {
            const swap = this._dense.pop()
            if (swap !== value) {
                const index = unchecked(this._indices[<i32>value])
                unchecked(this._dense[index] = swap)
                unchecked(this._indices[<i32>swap] = index)
            }
        }
        return this
    }
}
