import { World } from '../World'
import { createEntitySystem } from '../System'
import { EntityDeletedError, EntityNotExistError, EntityUndefinedError } from '../Errors'
import { getStatistics } from '../utils'

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
            world.addComponent(e, 1)
            expect(world.hasComponent(e, 1)).toBeTruthy()
        })

        it('has not component after add remove', () => {
            const world = new World()
            const e = world.createEntity()
            world.addComponent(e, 1)
            world.removeComponent(e, 1)
            expect(world.hasComponent(e, 1)).toBeFalsy()
        })

        it('throw on undefined entity', () => {
            const world = new World()
            expect(() => world.addComponent(undefined as any, 1)).toThrowError(EntityUndefinedError)
            expect(() => world.removeComponent(undefined as any, 1)).toThrowError(EntityUndefinedError)
        })

        it('throws on deleted entity', () => {
            const world = new World()
            const e = world.createEntity()
            world.deleteEntity(e)
            expect(() => world.addComponent(e, 1)).toThrowError(EntityDeletedError)
            expect(() => world.removeComponent(e, 1)).toThrowError(EntityDeletedError)
        })

        it('throw on not existing entity', () => {
            const world = new World()
            expect(() => world.addComponent(1, 1)).toThrowError(EntityNotExistError)
            expect(() => world.removeComponent(1, 1)).toThrowError(EntityNotExistError)
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
            world.addComponent(entity, 1)
            world.addComponent(entity, 2)
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
        const world = new World<[number, string]>()
        const updateArgs: [number, string] = [1, '2']
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
            .registerSystem(createEntitySystem(function addBaz(entities, _, ...args) {
                expect(args).toEqual(updateArgs)
                for (let e = entities.length - 1; e >= 0; e--) {
                    const entity = entities[e]!
                    expect(entity).toBe(0)
                    expect(foo.arr[entity]).toBe(2)
                    world.defer(() => {
                        world.addComponent(entity, baz.id)
                    })
                    expect(world.hasComponent(entity, baz.id)).toBeFalsy()
                }
            }, (q) => q.every(foo).not(baz)))
            .registerSystem(createEntitySystem(function deleteBaz(entities, world) {
                for (let e = entities.length - 1; e >= 0; e--) {
                    const entity = entities[e]!
                    expect(world.hasComponent(entity, baz.id))
                    world.deleteEntity(entity)
                    expect(world.hasEntity(entity)).toBeFalsy()
                }
            }, q => q.some(baz)))
            .initialize()
        const e0 = world.createEntity()
        expect(e0).toBe(0)
        world.addComponent(e0, foo.id)
        foo.arr[e0] = 2
        const e = world.createEntity()
        world.addComponent(e, bar.id)
        bar.arr[e] = 'hello'
        world.update(...updateArgs)
        world.update(...updateArgs) // for second system to run because of deferred component set

        expect(getStatistics(world)).toMatchInlineSnapshot(`
Object {
  "archetypes": Array [
    Object {
      "adjacent": Array [
        "00000001",
        "00000002",
      ],
      "componentIds": Array [],
      "entities": 0,
      "id": "root",
    },
    Object {
      "adjacent": Array [
        "root",
        "00000005",
      ],
      "componentIds": Array [
        0,
      ],
      "entities": 0,
      "id": "00000001",
    },
    Object {
      "adjacent": Array [
        "00000001",
      ],
      "componentIds": Array [
        0,
        2,
      ],
      "entities": 0,
      "id": "00000005",
    },
    Object {
      "adjacent": Array [
        "root",
      ],
      "componentIds": Array [
        1,
      ],
      "entities": 1,
      "id": "00000002",
    },
  ],
  "components": 3,
  "entities": 2,
  "queries": Array [
    Object {
      "archetypes": Array [
        Object {
          "adjacent": Array [
            "root",
            "00000005",
          ],
          "componentIds": Array [
            0,
          ],
          "entities": 0,
          "id": "00000001",
        },
      ],
    },
    Object {
      "archetypes": Array [
        Object {
          "adjacent": Array [
            "00000001",
          ],
          "componentIds": Array [
            0,
            2,
          ],
          "entities": 0,
          "id": "00000005",
        },
      ],
    },
  ],
  "systems": Array [
    "addBaz",
    "deleteBaz",
  ],
}
`)

        expect.assertions(8)
    })
})
