const mod32 = 0x0000001f

export type ReadonlyBitSet = {
    /**
     * Check if a value is in the set
     * @param value unsigned integer
     */
    has(value: number): boolean
    /**
     * Create a BitSet with all the bits flipped
     */
    not(): BitSet
    /**
     * Create a union of two sets.
     * The union includes all bits from both sets
     */
    union(other: ReadonlyBitSet): BitSet
    /**
     * Create an intersection of two sets.
     * The intersection includes only the bits common between both sets
     */
    intersection(other: ReadonlyBitSet): BitSet
    /**
     * Create a difference set.
     * The difference includes only the bits in this set which is not in the `other` set
     */
    difference(other: ReadonlyBitSet): BitSet
    /**
     * Create a symmetricDifference set.
     * The new set includes only the bits in either set, but not both
     */
    symmetricDifference(other: ReadonlyBitSet): BitSet
    /**
     * Check if this set contains all the bits in the `other` set
     */
    contains(other: ReadonlyBitSet): boolean
    /**
     * Check if this set has some bits in common with the `other` set
     */
    intersects(other: ReadonlyBitSet): boolean
    /**
     * Get a string representation of the set
     * @param radix default = 16
     */
    toString(radix?: number): string
    /**
     * Create a copy of this set
     */
    copy(): BitSet
    /**
     * Unmask the bits in the set, extracting all values currently in the set
     */
    values(): number[]
}

export type BitSet = ReadonlyBitSet & {
    /**
     * Size of the `mask`
     */
    readonly size: number
    /**
     * The array containing all the bits in the set
     */
    readonly mask: Uint32Array
    /**
     * Flip the bit corresponding to the `value`
     */
    xor(value: number): BitSet
    /**
     * Set the bit corresponding to the `value`
     */
    or(value: number): BitSet
}

export function createBitSet(size: number): BitSet {
    let mask = new Uint32Array(size)

    function grow(index: number): void {
        if (index >= size) {
            const oldMask = mask
            size = index + 1
            mask = new Uint32Array(size)
            mask.set(oldMask, 0)
        }
    }

    return Object.freeze({
        get size() {
            return size
        },
        get mask() {
            return mask
        },
        has(value: number): boolean {
            const index = value >>> 5
            if (index >= size) return false
            return Boolean(mask[index]! & (1 << (value & mod32)))
        },
        xor(value: number): BitSet {
            const index = value >>> 5
            grow(index)
            mask[index] ^= 1 << (value & mod32)
            return this
        },
        or(value: number): BitSet {
            const index = value >>> 5
            grow(index)
            mask[index] |= 1 << (value & mod32)
            return this
        },
        not(): BitSet {
            const set: BitSet = createBitSet(size)
            for (let i = 0; i < mask.length; i++) {
                set.mask[i] = ~mask[i]!
            }
            return set
        },
        union(other: BitSet): BitSet {
            if (other.mask === mask) return other
            const union: BitSet = createBitSet(Math.max(size, other.size))
            for (let i = 0; i < other.mask.length; i++) {
                const a = mask[i] || 0
                const b = other.mask[i] || 0
                union.mask[i] = a | b
            }
            return union
        },
        intersection(other: BitSet): BitSet {
            if (other.mask === mask) return other
            const intersection = createBitSet(Math.min(size, other.size))
            for (let i = 0; i < intersection.mask.length; i++) {
                const a = mask[i]!
                const b = other.mask[i]!
                intersection.mask[i] = a & b
            }
            return intersection
        },
        difference(other: BitSet): BitSet {
            if (other.mask === mask) return other
            const diff = createBitSet(size)
            for (let i = 0; i < diff.mask.length; i++) {
                const a = mask[i]!
                const b = other.mask[i] || 0
                diff.mask[i] = a & ~b
            }
            return diff
        },
        symmetricDifference(other: BitSet): BitSet {
            if (other.mask === mask) return other
            const symDiff = createBitSet(Math.max(size, other.size))
            for (let i = 0; i < symDiff.mask.length; i++) {
                const a = mask[i] || 0
                const b = other.mask[i] || 0
                symDiff.mask[i] = a ^ b
            }
            return symDiff
        },
        contains(other: BitSet): boolean {
            if (other.mask === mask) return true
            for (let i = 0; i < other.mask.length; i++) {
                const a = mask[i] || 0
                const b = other.mask[i]!
                if ((a & b) !== b) return false
            }
            return true
        },
        intersects(other: BitSet): boolean {
            if (other.mask === mask) return true
            const length = Math.min(mask.length, other.mask.length)
            for (let i = 0; i < length; i++) {
                const a = mask[i]!
                const b = other.mask[i]!
                if ((a & b) !== 0) return true
            }
            return false
        },
        toString(radix = 16): string {
            if (mask.length == 0) return '0'
            return mask.reduceRight((str, n) => str.concat(n.toString(radix as number)), '')
        },
        copy(): BitSet {
            const set: BitSet = createBitSet(size)
            set.mask.set(mask, 0)
            return set
        },
        values(): number[] {
            const values: number[] = []
            for (let i = 0, l = mask.length; i < l; i++) {
                const bits = mask[i]!
                for (let shift = 0; shift < 32; shift++) {
                    if (bits & (1 << shift)) {
                        values.push(i << 5 | shift)
                    }
                }
            }
            return values
        }
    })
}
