import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function createPacked5(count) {
    const world = new World()

    const A = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(1)
    }
    const B = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(1)
    }
    const C = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(1)
    }
    const D = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(1)
    }
    const E = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(1)
    }

    const prefab = world.prefabricate([A.id, B.id, C.id, D.id, E.id])

    world
        .registerSystem(function systemAp5(entities, _) {
            const arr = A.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                arr[entities[i]] *= 2
            }
        }, query(all(A.id, E.id)))
        .registerSystem(function systemBp5(entities, _) {
            const arr = B.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                arr[entities[i]] *= 2
            }
        }, query(all(B.id, E.id)))
        .registerSystem(function systemCp5(entities, _) {
            const arr = C.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                arr[entities[i]] *= 2
            }
        }, query(all(C.id, E.id)))
        .registerSystem(function systemDp5(entities, _) {
            const arr = D.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                arr[entities[i]] *= 2
            }
        }, query(all(D.id, E.id)))
        .registerSystem(function systemEp5(entities, _) {
            const arr = E.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                arr[entities[i]] *= 2
            }
        }, query(all(E.id)))

    for (let i = 0; i < count; i++) {
        const entity = world.createEntity()
        world.transformEntity(entity, prefab)
    }

    return function packed5() {
        world.update()
    }
}
