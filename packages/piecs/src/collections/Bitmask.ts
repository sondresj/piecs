export interface ReadonlyBitMask {
    has: (value: number) => boolean
    toString: () => string
    copy: () => BitMask
}

export class BitMask implements ReadonlyBitMask {
    protected mask: Uint32Array

    constructor();
    constructor(maxValue: number);
    constructor(uint32Array: Uint32Array);
    constructor(maxOrArray?: number | Uint32Array) {
        if (maxOrArray instanceof Uint32Array) {
            this.mask = new Uint32Array(maxOrArray)
        } else {
            this.mask = new Uint32Array(maxOrArray ? Math.ceil(maxOrArray / 32) : 0)
        }
    }

    has = (value: number): boolean => {
        return (this.mask[value >> 5]! & (1 << (value & 0x1f))) !== 0
    }

    xor = (value: number) => {
        const index = value >> 5
        if (index >= this.mask.length) {
            const newMask = new Uint32Array(index)
            newMask.set(this.mask)
            this.mask = newMask
        }
        this.mask[index] ^= 1 << (value & 0x1f) // & 0x1f is the same as % 32
        return this
    }

    toString = () => {
        return this.mask.reduce((str, n) => n.toString(16) + str, '') || '0'
    }

    copy = () => {
        return new BitMask(this.mask)
    }
}
