const mod32 = 0x0000001f

export type ReadonlyBitSet = {
    has(value: number): boolean
    not(): BitSet
    union(other: BitSet): BitSet
    intersection(other: BitSet): BitSet
    difference(other: BitSet): BitSet
    symmetrictDifference(other: BitSet): BitSet
    contains(other: BitSet): boolean
    intersects(other: BitSet): boolean
    toString(radix?: number): string
    copy(): BitSet
}

export class BitSet implements ReadonlyBitSet {
    private _mask: Uint32Array
    private _maxValue: number
    private _size: number

    constructor(maxValue: number) {
        this._maxValue = Math.max(maxValue, 1) >>> 0
        this._size = Math.ceil(this._maxValue / 32) >>> 0
        this._mask = new Uint32Array(this._size)
    }

    has(value: number): boolean {
        const index = value >>> 5
        if (index >= this._size) return false
        return Boolean(this._mask[index]! & (1 << (value & mod32)))
    }

    _grow(valueToAccomodate: number): void {
        if (valueToAccomodate > this._maxValue) {
            this._maxValue = valueToAccomodate
        } else {
            return
        }
        const index = valueToAccomodate >>> 5
        if (index >= this._size) {
            this._maxValue = valueToAccomodate
            const oldMask = this._mask
            this._size = Math.ceil(valueToAccomodate / 32)
            this._mask = new Uint32Array(this._size)
            this._mask.set(oldMask, 0)
        }
    }

    xor(value: number): this {
        this._grow(value)
        const index = value >>> 5
        this._mask[index] ^= 1 << (value & mod32)
        return this
    }

    or(value: number): this {
        this._grow(value)
        const index = value >>> 5
        this._mask[index] |= 1 << (value & mod32)
        return this
    }

    and(value: number): this {
        this._grow(value)
        const index = value >>> 5
        this._mask[index] &= 1 << (value & mod32)
        return this
    }

    not(): BitSet {
        const newBitMask: BitSet = new BitSet(this._maxValue)
        for (let i = 0; i < this._mask.length; i++) {
            newBitMask._mask[i] = ~this._mask[i]!
        }
        return newBitMask
    }

    union(other: BitSet): BitSet {
        const maxValue = Math.max(this._maxValue, other._maxValue)
        const union: BitSet = new BitSet(maxValue)
        for (let i = 0; i < other._mask.length; i++) {
            const a = this._mask[i] || 0
            const b = other._mask[i] || 0
            union._mask[i] = a | b
        }
        return union
    }

    intersection(other: BitSet): BitSet {
        const maxValue = Math.min(this._maxValue, other._maxValue)
        const intersection = new BitSet(maxValue)
        for (let i = 0; i < intersection._mask.length; i++) {
            const a = this._mask[i]!
            const b = other._mask[i]!
            intersection._mask[i] = a & b
        }
        return intersection
    }

    difference(other: BitSet): BitSet {
        const diff = new BitSet(this._maxValue)
        for (let i = 0; i < diff._mask.length; i++) {
            const a = this._mask[i]!
            const b = other._mask[i] || 0
            diff._mask[i] = a & ~b
        }
        return diff
    }

    symmetrictDifference(other: BitSet): BitSet {
        const maxValue = Math.max(this._maxValue, other._maxValue)
        const symDiff = new BitSet(maxValue)
        for (let i = 0; i < symDiff._mask.length; i++) {
            const a = this._mask[i] || 0
            const b = other._mask[i] || 0
            symDiff._mask[i] = a ^ b
        }
        return symDiff
    }

    contains(other: BitSet): boolean {
        if (other._size > this._size) return false
        for (let i = 0; i < other._mask.length; i++) {
            const a = this._mask[i]!
            const b = other._mask[i]!
            if ((a & b) !== b) return false
        }
        return true
    }

    intersects(other: BitSet): boolean {
        const length = Math.min(this._mask.length, other._mask.length)
        for (let i = 0; i < length; i++) {
            const a = this._mask[i]!
            const b = other._mask[i]!
            if ((a & b) !== 0) return true
        }
        return false
    }

    toString(radix = 16): string {
        if (this._mask.length == 0) return '0'
        return this._mask.reduceRight((str, n) => str.concat(n.toString(radix)), '')
    }

    copy(): BitSet {
        const set: BitSet = new BitSet(this._maxValue)
        set._mask.set(this._mask, 0)
        return set
    }
}
