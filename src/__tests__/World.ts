import { and, every, not, some } from '../Query'
import { World } from '../World'

describe('World', () => {
    it('works', () => {
        const world = new World({
            foo: {
                type: 'uint32',
                default: 0
            },
            bar: {
                type: 'string',
                default: ''
            },
            baz: {
                type: 'boolean',
                default: true
            }
        }, [{
            name: 'addBarIfFoo',
            query: and(every('foo'), not('baz')),
            init: (world) => {
                const e = world.spawnEntity()
                world.setComponent(e, 'foo', 2) //deferred
            },
            execute: (entities, world) => {
                entities((entity) => {
                    expect(entity).toBe(1)
                    expect(world.getEntityComponent(entity, 'foo')).toBe(2)
                    world.setComponent(entity, 'baz') // deferred using default value
                    expect(world.hasEntityComponent(entity, 'baz')).toBeFalsy()
                })
            }
        }, {
            name: 'killEntitiesWithBaz',
            query: some('baz'),
            execute: (_, world) => {
                world.forEachEntityWithComponent('baz', entity => {
                    world.killEntityImmediate(entity)
                    expect(world.hasEntity(entity)).toBeFalsy()
                })
            }
        }])

        world.init([
            {
                bar: 'hello'
            }
        ])
        world.update()
        world.update() // for second system to run because of deferred component set

        expect.assertions(4)
    })
})
