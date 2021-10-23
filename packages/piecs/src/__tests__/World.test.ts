import { World } from '../World'
import { createEntitySystem } from '../System'
import { EntityDeletedError, EntityNotExistError, EntityUndefinedError } from '../Errors'

describe('World', () => {
    describe('entity', () => {
        it('has entity after create entity', () => {
            const world = new World()
            const e = world.createEntity()
            expect(world.hasEntity(e)).toBeTruthy()
        })

        it('has not entity after delete entity', () => {
            const world = new World()
            const e = world.createEntity()
            world.deleteEntity(e)
            expect(world.hasEntity(e)).toBeFalsy()
        })

        it('reuses deleted entity', () => {
            const world = new World()
            const e1 = world.createEntity()
            world.createEntity()
            world.deleteEntity(e1)
            const e3 = world.createEntity()
            expect(e1).toBe(e3)
        })
    })

    describe('component', () => {
        it('has component after add', () => {
            const world = new World()
            const e = world.createEntity()
            world.addComponentId(e, 1)
            expect(world.hasComponentId(e, 1)).toBeTruthy()
        })

        it('has not component after add remove', () => {
            const world = new World()
            const e = world.createEntity()
            world.addComponentId(e, 1)
            world.removeComponentId(e, 1)
            expect(world.hasComponentId(e, 1)).toBeFalsy()
        })

        it('throw on undefined entity', () => {
            const world = new World()
            expect(() => world.addComponentId(undefined as any, 1)).toThrowError(EntityUndefinedError)
            expect(() => world.removeComponentId(undefined as any, 1)).toThrowError(EntityUndefinedError)
        })

        it('throws on deleted entity', () => {
            const world = new World()
            const e = world.createEntity()
            world.deleteEntity(e)
            expect(() => world.addComponentId(e, 1)).toThrowError(EntityDeletedError)
            expect(() => world.removeComponentId(e, 1)).toThrowError(EntityDeletedError)
        })

        it('throw on not existing entity', () => {
            const world = new World()
            expect(() => world.addComponentId(1, 1)).toThrowError(EntityNotExistError)
            expect(() => world.removeComponentId(1, 1)).toThrowError(EntityNotExistError)
        })
    })

    describe('prefabricate', () => {
        it('increments next componentId when prefabricating before creating component', () => {
            const world = new World()
            world.prefabricate([1, 2])
            const nextComponentId = world.createComponentId()
            expect(nextComponentId).toBe(3)
        })

        it('entity gains prefab when components added equals prefab', () => {
            const world = new World()
            const prefab = world.prefabricate([1, 2])
            const entity = world.createEntity()
            world.addComponentId(entity, 1)
            world.addComponentId(entity, 2)
            expect(prefab.entities[0]).toBe(entity)
        })

        it('adds created entity to prefab', () => {
            const world = new World()
            const prefab = world.prefabricate([1, 2])
            const entity = world.createEntity(prefab)
            expect(prefab.entities[0]).toBe(entity)
        })

        it('transforms entity to prefab', () => {
            const world = new World()
            const prefab = world.prefabricate([0, 3])
            const entity = world.createEntity()
            world.transformEntity(entity, prefab)
            expect(prefab.entities[0]).toBe(entity)
        })
    })



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
            }, (q) => q.every(foo).not(baz)))
            .registerSystem(createEntitySystem(function deleteBaz(entities, world) {
                for (let e = entities.length - 1; e >= 0; e--) {
                    const entity = entities[e]!
                    expect(world.hasComponentId(entity, baz.id))
                    world.deleteEntity(entity)
                    expect(world.hasEntity(entity)).toBeFalsy()
                }
            }, q => q.some(baz)))
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
