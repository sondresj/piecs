export class BitMask {
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

    has = (value: number) => {
        return Boolean(this.mask[value >> 5]! & (1 << value & 0x0000001f))
    }

    xor = (value: number) => {
        this.mask[value >> 5] ^= 1 << value & 0x0000001f // & 0x0000001f is the same as % 32
        return this
    }

    toString = () => {
        return this.mask.reduce((str, n) => str + n.toString(16), '') || '0'
    }

    copy = () => {
        return new BitMask(this.mask)
    }
}
