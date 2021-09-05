import BitMask from '../Bitmask'

describe('Bitmask', () => {
    describe('toString', () => {
        it('is 0 when mask is blank', () => {
            const mask = new BitMask()
            expect(mask.toString()).toBe('0')
        })

        it('atches the binary representation of flags set', () => {
            const mask = new BitMask(new Uint32Array([0b00000000000000000000000100100010]));
            expect(mask.toString()).toBe('100100010')
        })
    })

    describe('has', () => {
        it('returns true for present value', () => {
            const mask = new BitMask(new Uint32Array([0b10000000100]))
            expect(mask.has(2)).toBeTruthy()
        })
    })

    describe('xor', () => {
        it('toggles the presence of value', () => {
            const mask = new BitMask(10)
            expect(mask.xor(2).has(2)).toBeTruthy()
            expect(mask.xor(2).has(2)).toBeFalsy()
        })
    })

    describe('copy', () => {
        it('returns a new bitmask with the same values but different Uint32Array', () => {
            const mask = new BitMask(new Uint32Array([0b10000000100]))
            const copy = mask.copy().xor(2)
            expect(mask.has(2) !== copy.has(2)).toBeTruthy()
            expect(mask.has(10) === copy.has(10)).toBeTruthy()
        })
    })
})