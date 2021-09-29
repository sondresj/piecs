const assert = require('assert')
const { describe, test } = require('./utils')

const {
    SparseSet,
} = require('..')

module.exports = describe('SparseSet', () => {
    test('set entry, expect has entry', () => {
        const set = new SparseSet(10)
        set.add(5)
        assert.ok(set.length)
        assert.ok(set.has(5))
    })

    test('get item at index, expect value', () => {
        const set = new SparseSet(10)
        set.add(5)
        assert.strictEqual(set.get(0), 5)
    })

    test('untouched sparseset does not have 0', () => {
        const set = new SparseSet(10)
        assert.ok(!set.has(0))
    })
})
