const mod32 = 0x0000001f
export class BitMask {
    protected _mask: Uint32Array
    private _size: u32
    constructor(protected maxValue: u32) {
        this._size = u32(Math.ceil(maxValue / 32.0))
        this._mask = new Uint32Array(this._size)
    }

    @inline
    has(value: u32): bool {
        const index = value >> 5
        if(index >= this._size) return false
        return <bool>(unchecked(this._mask[index] >> (value & mod32)) & 1)
    }

    __grow(valueToAccomodate: u32): void {
        if (valueToAccomodate > this.maxValue) {
            this.maxValue = valueToAccomodate
        } else {
            return
        }
        const index = valueToAccomodate >> 5
        if (index >= this._size) {
            this.maxValue = valueToAccomodate
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
        const newBitMask: BitMask = new BitMask(this.maxValue)
        for(let i: u32 = 0; i < <u32>this._mask.length; i++) {
            const val: u32 = load<u32>(this._mask.dataStart + <usize>i)
            store<u32>(newBitMask._mask.dataStart + <usize>i, ~val)
        }
        return newBitMask
    }

    union(other: BitMask): BitMask {
        const maxValue: u32 = <u32>Math.max(this.maxValue, other.maxValue)
        const union: BitMask = new BitMask(maxValue)
        for(let i: u32 = 0; i < <u32>other._mask.length; i++) {
            const a = load<u32>(this._mask.dataStart + <usize>i)
            const b = load<u32>(other._mask.dataStart + <usize>i)
            store<u32>(union._mask.dataStart + <usize>i, a | b)
        }
        return union
    }

    intersection(other: BitMask): BitMask {
        const maxValue: u32 = <u32>Math.min(this.maxValue, other.maxValue)
        const intersection: BitMask = new BitMask(maxValue)
        for(let i: u32 = 0; i < <u32>intersection._mask.length; i++) {
            const a = load<u32>(this._mask.dataStart + <usize>i)
            const b = load<u32>(other._mask.dataStart + <usize>i)
            store<u32>(intersection._mask.dataStart + <usize>i, a & b)
        }
        return intersection
    }

    symmetrictDifference(other: BitMask): BitMask {
        const maxValue: u32 = <u32>Math.max(this.maxValue, other.maxValue)
        const symDiff: BitMask = new BitMask(maxValue)
        for(let i: u32 = 0; i < <u32>symDiff._mask.length; i++) {
            const a = load<u32>(this._mask.dataStart + <usize>i)
            const b = load<u32>(other._mask.dataStart + <usize>i)
            store<u32>(symDiff._mask.dataStart + <usize>i, a ^ b)
        }
        return symDiff

    }

    contains(other: BitMask): bool {
        if(other._size > this._size) return false
        for(let i: u32 = 0; i < <u32>other._mask.length; i++) {
            const a: u32 = load<u32>(this._mask.dataStart + <usize>i)
            const b: u32 = load<u32>(other._mask.dataStart + <usize>i)
            if((a & b) != b) return false
        }
        return true
    }

    intersects(other: BitMask): bool {
        const length = <u32>Math.min(this._mask.length, other._mask.length)
        for (let i: u32 = 0; i < length; i++) {
            const a: u32 = load<u32>(this._mask.dataStart + <usize>i)
            const b: u32 = load<u32>(other._mask.dataStart + <usize>i)
            if ((a & b) == 0) return false
        }
        return true
    }

    toString(): string {
        if(this._mask.length == 0) return '0'
        return this._mask.reduceRight((str, n) => str.concat(n.toString(16)), '')
    }

    copy(): BitMask {
        const newBitMask: BitMask = new BitMask(this._mask.length)
        memory.copy(newBitMask._mask.dataStart, this._mask.dataStart, this._mask.length)
        return newBitMask
    }
}
