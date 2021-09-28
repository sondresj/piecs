const mod32 = 0x0000001f
export class BitMask {
    // assemblyscript Array uses arraybuffer under the hood, so might as well use regular Array
    // Just using the Array for the growing feature when you set length.
    // Any other operation on the array is done using native wasm load/store instructions  
    private _mask: Array<u32>
    private _maxValue: u32
    private _size: u32

    constructor(maxValue: u32) {
        this._maxValue = <u32>Math.max(maxValue, 1)
        this._size = u32(Math.ceil(this._maxValue / 32.0))
        this._mask = new Array<u32>(this._size)
    }

    @inline
    has(value: u32): bool {
        const index = value >> 5
        if (index >= this._size) return false
        const bits = load<u32>(this._mask.dataStart + (<usize>index << alignof<u32>()))
        return <bool>(bits >> (value & mod32) & 1)
    }

    __grow(valueToAccomodate: u32): void {
        if (valueToAccomodate > this._maxValue) {
            this._maxValue = valueToAccomodate
        } else {
            return
        }
        const index = valueToAccomodate >> 5
        if (index >= this._size) {
            this._maxValue = valueToAccomodate
            this._size = u32(Math.ceil(valueToAccomodate / 32.0))
            this._mask.length = this._size
        }
    }

    xor(value: u32): this {
        this.__grow(value)
        const index = value >> 5
        const offset = <usize>index << alignof<u32>()
        const cur = load<u32>(this._mask.dataStart + offset)
        store<u32>(this._mask.dataStart + offset, cur ^ (1 << (value & mod32)))
        // unchecked(this._mask[index] ^= 1 << (value & mod32))
        return this
    }

    or(value: u32): this {
        this.__grow(value)
        const index = value >> 5
        const offset = <usize>index << alignof<u32>()
        const cur = load<u32>(this._mask.dataStart + offset)
        store<u32>(this._mask.dataStart + offset, cur | (1 << (value & mod32)))
        // unchecked(this._mask[index] |= 1 << (value & mod32))
        return this
    }

    and(value: u32): this {
        this.__grow(value)
        const index = value >> 5
        const offset = <usize>index << alignof<u32>()
        const cur = load<u32>(this._mask.dataStart + offset)
        store<u32>(this._mask.dataStart + offset, cur & (1 << (value & mod32)))
        // unchecked(this._mask[index] &= 1 << (value & mod32))
        return this
    }

    not(): BitMask {
        const newBitMask: BitMask = new BitMask(this._maxValue)
        const l = <u32> this._mask.length
        for (let i: u32 = 0; i < l; i++) {
            const offset = <usize>i << alignof<u32>()
            const val: u32 = load<u32>(this._mask.dataStart + offset)
            store<u32>(newBitMask._mask.dataStart + offset, ~val)
        }
        return newBitMask
    }

    union(other: BitMask): BitMask {
        const al: u32 = <u32> this._mask.length
        const bl: u32 = <u32>other._mask.length
        const maxValue: u32 = <u32>Math.max(this._maxValue, other._maxValue)
        const union: BitMask = new BitMask(maxValue)
        for (let i: u32 = 0; i < bl; i++) {
            const offset = <usize>i << alignof<u32>()
            const a: u32 = i < al
                ? load<u32>(this._mask.dataStart + offset)
                : 0
            const b: u32 = i < bl
                ? load<u32>(other._mask.dataStart + offset)
                : 0
            store<u32>(union._mask.dataStart + offset, a | b)
        }
        return union
    }

    intersection(other: BitMask): BitMask {
        const maxValue: u32 = <u32>Math.min(this._maxValue, other._maxValue)
        const intersection: BitMask = new BitMask(maxValue)
        const l = <u32>intersection._mask.length
        for (let i: u32 = 0; i < l; i++) {
            const offset = <usize>i << alignof<u32>()
            const a = load<u32>(this._mask.dataStart + offset)
            const b = load<u32>(other._mask.dataStart + offset)
            store<u32>(intersection._mask.dataStart + offset, a & b)
        }
        return intersection
    }

    difference(other: BitMask): BitMask {
        const otherLength = other._mask.length
        const diff: BitMask = new BitMask(this._maxValue)
        const l = <u32>diff._mask.length
        for (let i: u32 = 0; i < l; i++) {
            const offset = <usize>i << alignof<u32>()
            const a: u32 = load<u32>(this._mask.dataStart + offset)
            const b: u32 = i < <u32>otherLength
                ? load<u32>(other._mask.dataStart + offset)
                : 0
            store<u32>(diff._mask.dataStart + offset, a & ~b)
        }
        return diff
    }
    
    symmetrictDifference(other: BitMask): BitMask {
        const al: u32 = <u32> this._mask.length
        const bl: u32 = <u32>other._mask.length
        const maxValue: u32 = <u32>Math.max(this._maxValue, other._maxValue)
        const symDiff: BitMask = new BitMask(maxValue)
        const l = <u32>symDiff._mask.length
        for (let i: u32 = 0; i < l; i++) {
            const offset = <usize>i << alignof<u32>()
            const a: u32 = i < al
                ? load<u32>(this._mask.dataStart + offset)
                : 0
            const b: u32 = i < bl
                ? load<u32>(other._mask.dataStart + offset)
                : 0
            store<u32>(symDiff._mask.dataStart + offset, a ^ b)
        }
        return symDiff
    }
    
    contains(other: BitMask): bool {
        if (other._size > this._size) return false
        const l = <u32>other._mask.length
        for (let i: u32 = 0; i < l; i++) {
            const offset = <usize>i << alignof<u32>()
            const a: u32 = load<u32>(this._mask.dataStart + offset)
            const b: u32 = load<u32>(other._mask.dataStart + offset)
            if ((a & b) != b) return false
        }
        return true
    }

    intersects(other: BitMask): bool {
        const l = <u32>Math.min(this._mask.length, other._mask.length)
        for (let i: u32 = 0; i < l; i++) {
            const offset = <usize>i << alignof<u32>()
            const a: u32 = load<u32>(this._mask.dataStart + offset)
            const b: u32 = load<u32>(other._mask.dataStart + offset)
            if ((a & b) != 0) return true
        }
        return false
    }

    toString(): string {
        if (this._mask.length == 0) return '-0'
        return this._mask.reduceRight((str, n) => str.concat(n.toString(16)), '')
    }

    copy(): BitMask {
        const newBitMask: BitMask = new BitMask(this._maxValue)
        memory.copy(newBitMask._mask.dataStart, this._mask.dataStart, this._mask.length << alignof<u32>())
        return newBitMask
    }
}
