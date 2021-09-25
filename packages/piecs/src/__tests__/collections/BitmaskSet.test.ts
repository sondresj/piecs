import { BitmaskSet } from '../../collections/BitmaskSet'

describe('Bitmask', () => {
    describe('toString', () => {
        it('is 0 when mask is blank', () => {
            const mask = new BitmaskSet(0)
            expect(mask.toString()).toBe('0')
        })

        it('matches the binary representation of flags set', () => {
            const mask = new BitmaskSet(32)
            mask.or(10)
            mask.or(2)
            mask.or(7)
            expect(mask.toString()).toBe('484')
        })
    })

    describe('has', () => {
        it('returns true for present value', () => {
            const mask = new BitmaskSet(2)
            mask.or(0)
            expect(mask.has(0)).toBeTruthy()
        })

        it('works', () => {
            const mask = new BitmaskSet(53)
            for (let i = 0; i < 53; i++) {
                mask.xor(i)
            }
            for (let i = 0; i < 53; i++) {
                expect(mask.has(i)).toBeTruthy()
            }
        })
    })

    describe('xor', () => {
        it('toggles the presence of value', () => {
            const mask = new BitmaskSet(10)
            expect(mask.xor(2).has(2)).toBeTruthy()
            expect(mask.xor(2).has(2)).toBeFalsy()
        })
    })

    describe('copy', () => {
        it('returns a new bitmask with the same values but different Uint32Array', () => {
            const mask = new BitmaskSet(12)
            mask.or(10)
                .or(2)
            const copy = mask.copy().xor(2)
            expect(mask.has(2) !== copy.has(2)).toBeTruthy()
            expect(mask.has(10) === copy.has(10)).toBeTruthy()
        })
    })
    
    test('not returns new bitmask with all bytes flipped', () => {
        let mask = new BitmaskSet(50)
        mask = mask.or(0).or(4).not()
        expect(mask.toString()).toBe('ffffffffffffffee')
    })

    test('is superset', () => {
        const supr = new BitmaskSet(10)
        const sub = new BitmaskSet(10)
        supr.or(1)
            .or(2)
            .or(3)
        sub.or(2)
        expect(supr.contains(sub)).toBeTruthy()
    })

    test('is not superset', () => {
        const supr = new BitmaskSet(10)
        const sub = new BitmaskSet(10)
        supr.or(1)
            .or(2)
            .or(3)
        sub.or(2)
            .or(4)
        expect(!supr.contains(sub)).toBeTruthy()
    })

    test('get intersection', () => {
        const a = new BitmaskSet(50) // 2xu32
        a.or(36).or(18).or(4)
        const b = new BitmaskSet(50)
        b.or(37).or(18).or(5)

        const intersection = a.intersection(b)
        expect(!intersection.has(36)).toBeTruthy()
        expect(!intersection.has(37)).toBeTruthy()
        expect(intersection.has(18)).toBeTruthy()
        expect(!intersection.has(5)).toBeTruthy()
        expect(!intersection.has(4)).toBeTruthy()
    })
    test('get union', () => {
        const a = new BitmaskSet(50) // 2xu32
        a.or(36).or(18).or(4)
        const b = new BitmaskSet(50)
        b.or(37).or(18).or(5)

        const union = a.union(b)
        expect(union.has(36)).toBeTruthy()
        expect(union.has(37)).toBeTruthy()
        expect(union.has(18)).toBeTruthy()
        expect(union.has(5)).toBeTruthy()
        expect(union.has(4)).toBeTruthy()
    })
    
    test('get symmetricDifference', () => {
        const a = new BitmaskSet(50) // 2xu32
        a.or(36).or(18).or(4)
        const b = new BitmaskSet(50)
        b.or(37).or(18).or(5)

        const symdiff = a.symmetrictDifference(b)
        expect(symdiff.has(36)).toBeTruthy()
        expect(symdiff.has(37)).toBeTruthy()
        expect(!symdiff.has(18)).toBeTruthy()
        expect(symdiff.has(5)).toBeTruthy()
        expect(symdiff.has(4)).toBeTruthy()
    })
})
