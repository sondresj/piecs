const assert = require('assert')
const { describe, test } = require('./utils')

const {
    // @ts-ignore
    __getString,
    BitMask,
} = require('..')

module.exports = describe('BitMask', () => {
    test('xor then has', () => {
        const mask = new BitMask(10)
        mask.xor(2)
        assert.ok(mask.has(2))
    })

    test('xor x2 then has not', () => {
        const mask = new BitMask(10)
        mask.xor(2)
        mask.xor(2)
        assert.ok(!mask.has(2))
    })

    test('or x2 then has', () => {
        const mask = new BitMask(10)
        mask.or(2)
        mask.or(2)
        assert.ok(mask.has(2))
    })

    test('and owerwrites whole byte', () => {
        const mask = new BitMask(10)
        mask.or(5)
        mask.or(2)
        mask.and(2)
        assert.ok(mask.has(2))
        assert.ok(!mask.has(5))
    })

    test('toString returns the hex representation of the mask, with leading 0\'s omitted', () => {
        const mask = new BitMask(10)
        mask.or(5)
        mask.or(2)
        mask.or(7)
        const str = __getString(mask.toString())
        assert.strictEqual(str, 'a4')
    })

    test('not returns new bitmask with all bytes flipped', () => {
        let mask = new BitMask(50)
        mask.or(0)
        mask.or(4)
        mask = BitMask.wrap(mask.not())
        const str = __getString(mask.toString())
        assert.strictEqual(str, 'ffffffffffffffee')
    })

    test('contains', () => {
        const supr = new BitMask(10)
        const sub = new BitMask(10)
        supr.or(1)
        supr.or(2)
        supr.or(3)
        sub.or(2)
        assert.ok(supr.contains(sub.valueOf()))
    })

    test('does not contain', () => {
        const supr = new BitMask(10)
        const sub = new BitMask(10)
        supr.or(1)
        supr.or(2)
        supr.or(3)
        sub.or(2)
        sub.or(4)
        assert.ok(!supr.contains(sub.valueOf()))
    })

    test('get intersection', () => {
        const a = new BitMask(50) // 2xu32
        a.or(36)
        a.or(18)
        a.or(4)
        const b = new BitMask(50)
        b.or(37)
        b.or(18)
        b.or(5)

        const intersection = BitMask.wrap(a.intersection(b.valueOf()))
        assert.ok(!intersection.has(36))
        assert.ok(!intersection.has(37))
        assert.ok(intersection.has(18))
        assert.ok(!intersection.has(5))
        assert.ok(!intersection.has(4))
    })
    test('get union', () => {
        const a = new BitMask(50) // 2xu32
        a.or(36)
        a.or(18)
        a.or(4)
        const b = new BitMask(50)
        b.or(37)
        b.or(18)
        b.or(5)

        const union = BitMask.wrap(a.union(b.valueOf()))
        assert.ok(union.has(36))
        assert.ok(union.has(37))
        assert.ok(union.has(18))
        assert.ok(union.has(5))
        assert.ok(union.has(4))
    })
    test('get symmetricDifference', () => {
        const a = new BitMask(50) // 2xu32
        a.or(36)
        a.or(18)
        a.or(4)
        const b = new BitMask(50)
        b.or(37)
        b.or(18)
        b.or(5)

        const symdiff = BitMask.wrap(a.symmetrictDifference(b.valueOf()))
        assert.ok(symdiff.has(36))
        assert.ok(symdiff.has(37))
        assert.ok(!symdiff.has(18))
        assert.ok(symdiff.has(5))
        assert.ok(symdiff.has(4))
    })
    test('copy', () => {
        const mask = new BitMask(50)
        mask.or(42)
        const copy = BitMask.wrap(mask.copy())
        assert.ok(copy.has(42))
    })
})
