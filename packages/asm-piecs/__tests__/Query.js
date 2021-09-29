const assert = require('assert')
const { describe, test } = require('./utils')

const {
    Archetype,
    BitMask,
} = require('..')

const {
    and,
    or,
    all,
    any,
    not,
    query
} = require('../glue')


module.exports = describe('Query', () => {
    const archMask = new BitMask(5)
    archMask.or(0)
    archMask.or(1)
    archMask.or(2)
    archMask.or(3) // 1111
    const archetype = new Archetype(archMask.valueOf())

    test('archetype is match for all', () => {
        const q = query(and(all(1, 2))) // 0110
        q['']
        assert.ok(q.tryAdd(archetype))
        assert.strictEqual(q.length, 1)
    })

    test('archetype is match for any', () => {
        const q = query(and(any(6, 2)))
        assert.ok(q.tryAdd(archetype))
        assert.strictEqual(q.length, 1)
    })

    test('archetype is not match for not', () => {
        const q = query(and(not(2)))
        assert.ok(!q.tryAdd(archetype))
        assert.strictEqual(q.length, 0)
    })

    test('archetype is match for all and not', () => {
        const q = query(and(all(2, 3), not(6)))
        assert.ok(q.tryAdd(archetype))
        assert.strictEqual(q.length, 1)
    })
})
