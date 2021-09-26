const mod32 = 0x0000001f
export class BitMask {
    private _mask: Uint32Array
    private _maxValue: u32
    private _size: u32

    constructor(maxValue: u32) {
        this._maxValue = <u32>Math.max(maxValue, 1)
        this._size = u32(Math.ceil(this._maxValue / 32.0))
        this._mask = new Uint32Array(this._size)
    }

    @inline
    has(value: u32): bool {
        const index = value >> 5
        if (index >= this._size) return false
        return <bool>(unchecked(this._mask[index] >> (value & mod32)) & 1)
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
            const oldMask = this._mask
            this._size = u32(Math.ceil(valueToAccomodate / 32.0))
            this._mask = new Uint32Array(this._size)
            memory.copy(this._mask.dataStart, oldMask.dataStart, oldMask.length)
        }
    }

    xor(value: u32): this {
        this.__grow(value)
        const index = value >> 5
        unchecked(this._mask[index] ^= 1 << (value & mod32))
        return this
    }

    or(value: u32): this {
        this.__grow(value)
        const index = value >> 5
        unchecked(this._mask[index] |= 1 << (value & mod32))
        return this
    }

    and(value: u32): this {
        this.__grow(value)
        const index = value >> 5
        unchecked(this._mask[index] &= 1 << (value & mod32))
        return this
    }

    not(): BitMask {
        const newBitMask: BitMask = new BitMask(this._maxValue)
        for (let i: u32 = 0; i < <u32> this._mask.length; i++) {
            const val: u32 = load<u32>(this._mask.dataStart + <usize>i)
            store<u32>(newBitMask._mask.dataStart + <usize>i, ~val)
        }
        return newBitMask
    }

    union(other: BitMask): BitMask {
        const al: u32 = <u32> this._mask.length
        const bl: u32 = <u32>other._mask.length
        const maxValue: u32 = <u32>Math.max(this._maxValue, other._maxValue)
        const union: BitMask = new BitMask(maxValue)
        for (let i: u32 = 0; i < bl; i++) {
            const a: u32 = i < al
                ? load<u32>(this._mask.dataStart + <usize>i)
                : 0
            const b: u32 = i < bl
                ? load<u32>(other._mask.dataStart + <usize>i)
                : 0
            store<u32>(union._mask.dataStart + <usize>i, a | b)
        }
        return union
    }

    intersection(other: BitMask): BitMask {
        const maxValue: u32 = <u32>Math.min(this._maxValue, other._maxValue)
        const intersection: BitMask = new BitMask(maxValue)
        for (let i: u32 = 0; i < <u32>intersection._mask.length; i++) {
            const a = load<u32>(this._mask.dataStart + <usize>i)
            const b = load<u32>(other._mask.dataStart + <usize>i)
            store<u32>(intersection._mask.dataStart + <usize>i, a & b)
        }
        return intersection
    }

    difference(other: BitMask): BitMask {
        const otherLength = other._mask.length
        const diff: BitMask = new BitMask(this._maxValue)
        for (let i: u32 = 0; i < <u32>diff._mask.length; i++) {
            const a: u32 = load<u32>(this._mask.dataStart + <usize>i)
            const b: u32 = i < <u32>otherLength
                ? load<u32>(other._mask.dataStart + <usize>i)
                : 0
            store<u32>(diff._mask.dataStart + <usize>i, a & ~b)
        }
        return diff
    }
    
    symmetrictDifference(other: BitMask): BitMask {
        const al: u32 = <u32> this._mask.length
        const bl: u32 = <u32>other._mask.length
        const maxValue: u32 = <u32>Math.max(this._maxValue, other._maxValue)
        const symDiff: BitMask = new BitMask(maxValue)
        for (let i: u32 = 0; i < <u32>symDiff._mask.length; i++) {
            const a: u32 = i < al
                ? load<u32>(this._mask.dataStart + <usize>i)
                : 0
            const b: u32 = i < bl
                ? load<u32>(other._mask.dataStart + <usize>i)
                : 0
            store<u32>(symDiff._mask.dataStart + <usize>i, a ^ b)
        }
        return symDiff
    }
    
    contains(other: BitMask): bool {
        if (other._size > this._size) return false
        for (let i: u32 = 0; i < <u32>other._mask.length; i++) {
            const a: u32 = load<u32>(this._mask.dataStart + <usize>i)
            const b: u32 = load<u32>(other._mask.dataStart + <usize>i)
            if ((a & b) != b) return false
        }
        return true
    }

    intersects(other: BitMask): bool {
        const length = <u32>Math.min(this._mask.length, other._mask.length)
        for (let i: u32 = 0; i < length; i++) {
            const a: u32 = load<u32>(this._mask.dataStart + <usize>i)
            const b: u32 = load<u32>(other._mask.dataStart + <usize>i)
            if ((a & b) != 0) return true
        }
        return false
    }

    toString(): string {
        if (this._mask.length == 0) return '-0'
        return this._mask.reduceRight((str, n) => str.concat(n.toString(16)), '')
    }

    copy(): BitMask {
        const newBitMask: BitMask = new BitMask(this._mask.length)
        memory.copy(newBitMask._mask.dataStart, this._mask.dataStart, this._mask.length)
        return newBitMask
    }
}
