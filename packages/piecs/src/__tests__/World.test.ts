import { and, all, not, any, query } from '../Query'
import { World } from '../World'

describe('World', () => {
    it('works', () => {
        const builder = new World()
        const foo = builder.createComponentSet('foo', 'uint8', 0)
        const bar = builder.createComponentSet('bar', ['char(10)'], 'hei')
        const baz = builder.createComponentSet('baz', 'flag', true)
        builder
            .registerSystem(function addBaz(queryResults, _) {
                for (let i = 0; i < queryResults.length; i++) {
                    const entities = queryResults[i]!.entities
                    for (let e = entities.length - 1; e >= 0; e--) {
                        const entity = entities[e]!
                        expect(entity).toBe(0)
                        expect(foo.get(entity)).toBe(2)
                        world.defer(() => {
                            baz.add(entity) // deferred using default value
                        })
                        expect(baz.get(entity)).toBeFalsy()
                    }
                }
            }, query(and(all(foo.id), not(baz.id))))
            .registerSystem(function deleteBaz(queryResults, world) {
                for (let i = 0; i < queryResults.length; i++) {
                    const entities = queryResults[i]!.entities
                    for (let e = entities.length - 1; e >= 0; e--) {
                        const entity = entities[e]!
                        const b = baz.get(entity)
                        if (b !== undefined) {
                            world.deleteEntity(entity)
                            expect(world.hasEntity(entity)).toBeFalsy()
                        }
                    }
                }
            }, query(any(baz.id)))

        const world = builder.init([foo.id], [foo.id, baz.id], [bar.id])
        const e0 = world.createEntity()
        expect(e0).toBe(0)
        foo.add(e0, 2)
        const e = world.createEntity() // 1
        bar.add(e, 'hello')
        world.update()
        world.update() // for second system to run because of deferred component set

        expect.assertions(5)
    })
})
