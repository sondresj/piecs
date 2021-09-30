const assert = require('assert')
const { describe, test } = require('./utils')

const {
    World,
} = require('..')

const {
    and,
    or,
    all,
    any,
    not,
    query
} = require('../glue')

module.exports = describe('World', () => {
    test('works', () => {
        const world = new World()
        const c1 = world.getNextComponentId()
        const c2 = world.getNextComponentId()
        const q = query(and(all(c2, c1)))
        // @ts-ignore
        world.registerQuery(q.__ptr)
        world.init()
        const e = world.createEntity()
        world.setComponent(e, c1)
        world.setComponent(e, c2)
        assert.ok(world.hasEntity(e))
        // assert.ok(world.hasComponent(e, c1))
        assert.ok(world.hasComponent(e, c2))
        assert.ok(q.length)
        const entities = q.get(0)
        assert.ok(entities.length)
        assert.strictEqual(entities[0], e)
    })
})
