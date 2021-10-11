import { World, prefab, query, createEntitySystem } from '../dist/index.mjs'

export default function createPacked5(count) {
    const world = new World()

    const A = {
        id: world.createComponentId(),
        arr: new Uint32Array(count).fill(1)
    }
    const B = {
        id: world.createComponentId(),
        arr: new Uint32Array(count).fill(1)
    }
    const C = {
        id: world.createComponentId(),
        arr: new Uint32Array(count).fill(1)
    }
    const D = {
        id: world.createComponentId(),
        arr: new Uint32Array(count).fill(1)
    }
    const E = {
        id: world.createComponentId(),
        arr: new Uint32Array(count).fill(1)
    }

    const p = world.prefabricate([A.id, B.id, C.id, D.id, E.id])

    world
        .registerSystem(createEntitySystem(function systemAp5(entities) {
            const arr = A.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                arr[entities[i]] *= 2
            }
        }, query(prefab(p))))
        .registerSystem(createEntitySystem(function systemBp5(entities) {
            const arr = B.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                arr[entities[i]] *= 2
            }
        }, query(prefab(p))))
        .registerSystem(createEntitySystem(function systemCp5(entities) {
            const arr = C.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                arr[entities[i]] *= 2
            }
        }, query(prefab(p))))
        .registerSystem(createEntitySystem(function systemDp5(entities) {
            const arr = D.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                arr[entities[i]] *= 2
            }
        }, query(prefab(p))))
        .registerSystem(createEntitySystem(function systemEp5(entities) {
            const arr = E.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                arr[entities[i]] *= 2
            }
        }, query(prefab(p))))
        .initialize()

    for (let i = 0; i < count; i++) {
        const entity = world.createEntity()
        world.transformEntity(entity, p)
    }

    return function packed5() {
        world.update()
    }
}
