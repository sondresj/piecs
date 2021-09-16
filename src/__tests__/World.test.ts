import { and, every, not, some } from '../Query'
import { World } from '../World'

describe('World', () => {
    it('works', () => {
        /**
         * [{
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
        }]
         */
        const world = new World()
        const foo = world.createComponentSet('foo', 'uint8', 0)
        const bar = world.createComponentSet('bar', 'any', '')
        const baz = world.createComponentSet('baz', 'any', false)
        world.registerSystem({
            name: 'addBarIfFoo',
            query: and(every(foo), not(baz)),
            init: (world) => {
                const e = world.createEntity()
                expect(e).toBe(0)
                foo.set(e, 2)
            },
            execute: (entities) => {
                entities((entity) => {
                    expect(entity).toBe(0)
                    expect(foo.get(entity)).toBe(2)
                    baz.set(entity, undefined, true) // deferred using default value
                    expect(baz.get(entity)).toBeFalsy()
                })
            }
        }).registerSystem({
            name: 'killEntitiesWithBaz',
            query: some(baz),
            execute: (entities, world) => {
                entities(entity => {
                    const b = baz.get(entity)
                    if (b !== undefined) {
                        world.deleteEntity(entity)
                        expect(world.hasEntity(entity)).toBeFalsy()
                    }
                })
            }
        })

        world.init()
        const e = world.createEntity()
        bar.set(e, 'hello')
        world.update()
        world.update() // for second system to run because of deferred component set

        expect.assertions(5)
    })
})
