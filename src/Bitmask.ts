export default class BitMask {
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
        return !!(this.mask[value >> 5]! & (1 << value % 32))
    }

    xor = (value: number) => {
        this.mask[value >> 5] ^= 1 << value % 32
        return this
    }

    toString = () => {
        return this.mask.reduce((str, n) => str + n.toString(2), '') || '0'
    }

    copy = () => {
        return new BitMask(this.mask)
    }
}
