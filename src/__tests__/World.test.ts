import { and, every, not, some } from '../Query'
import { World } from '../World'

describe('World', () => {
    it('works', () => {
        const builder = new World()
        const foo = builder.createComponentSet('foo', 'uint8', 0)
        const bar = builder.createComponentSet('bar', 'string', '')
        const baz = builder.createComponentSet('baz', 'boolean', false)
        builder.registerSystem({
            name: 'addBarIfFoo',
            query: and(every(foo), not(baz)),
            init: (world) => {
                const e = world.createEntity()
                expect(e).toBe(0)
                foo.set(e, 2)
            },
            execute: (entities) => {
                entities.forEach(entity => {
                    expect(entity).toBe(0)
                    expect(foo.get(entity)).toBe(2)
                    world.defer(() => {
                        baz.set(entity) // deferred using default value
                    })
                    expect(baz.get(entity)).toBeFalsy()
                })
            }
        }).registerSystem({
            name: 'killEntitiesWithBaz',
            query: some(baz),
            execute: (entities, world) => {
                entities.forEach(entity => {
                    const b = baz.get(entity)
                    if (b !== undefined) {
                        world.deleteEntity(entity)
                        expect(world.hasEntity(entity)).toBeFalsy()
                    }
                })
            }
        })

        const world = builder.init()
        const e = world.createEntity()
        bar.set(e, 'hello')
        world.update()
        world.update() // for second system to run because of deferred component set

        expect.assertions(5)
    })
})
