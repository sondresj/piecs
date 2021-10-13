import { World } from '../World'
import { createEntitySystem } from '../System'

describe('World', () => {
    it('works', () => {
        const world = new World()
        const foo = {
            id: world.createComponentId(),
            arr: new Uint8Array(100)
        }
        const bar = {
            id: world.createComponentId(),
            arr: new Array<string>()
        }
        const baz = {
            id: world.createComponentId(),
        }

        world
            .registerSystem(createEntitySystem(function addBaz(entities, _) {
                for (let e = entities.length - 1; e >= 0; e--) {
                    const entity = entities[e]!
                    expect(entity).toBe(0)
                    expect(foo.arr[entity]).toBe(2)
                    world.defer(() => {
                        world.addComponentId(entity, baz.id)
                    })
                    expect(world.hasComponentId(entity, baz.id)).toBeFalsy()
                }
            }, (q) => q.every(foo.id).not(baz.id)))
            .registerSystem(createEntitySystem(function deleteBaz(entities, world) {
                for (let e = entities.length - 1; e >= 0; e--) {
                    const entity = entities[e]!
                    expect(world.hasComponentId(entity, baz.id))
                    world.deleteEntity(entity)
                    expect(world.hasEntity(entity)).toBeFalsy()
                }
            }, q => q.some(baz.id)))
            .initialize()
        const e0 = world.createEntity()
        expect(e0).toBe(0)
        world.addComponentId(e0, foo.id)
        foo.arr[e0] = 2
        const e = world.createEntity()
        world.addComponentId(e, bar.id)
        bar.arr[e] = 'hello'
        world.update()
        world.update() // for second system to run because of deferred component set

        expect.assertions(5)
    })
})
