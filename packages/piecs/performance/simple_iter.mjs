import { World } from '../lib/World.js'
import { prefab, query } from '../lib/Query.js'

export default function createSimpleIter(count) {
    const world = new World()
    const A = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count*4).fill(0)
    }
    const B = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count*4).fill(0)
    }
    const C = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count*4).fill(0)
    }
    const D = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count*4).fill(0)
    }
    const E = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count*4).fill(0)
    }

    const prefab1 = world.prefabricate([A.id, B.id])
    const prefab2 = world.prefabricate([A.id, B.id, C.id])
    const prefab3 = world.prefabricate([A.id, B.id, C.id, D.id])
    const prefab4 = world.prefabricate([A.id, B.id, C.id, E.id])

    world
        .registerSystem(function systemAB(entities) {
            const lA = A.arr
            const lB = B.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                const entity = entities[i]
                const a = lA[entity]
                const b = lB[entity]
                lA[entity] = b
                lB[entity] = a
            }
        }, query(prefab(prefab1)))
        .registerSystem(function systemCD(entities) {
            const lC = C.arr
            const lD = D.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                const entity = entities[i]
                const c = lC[entity]
                const d = lD[entity]
                lC[entity] = d
                lD[entity] = c
            }
        }, query(prefab(prefab3)))
        .registerSystem(function systemCE(entities) {
            const lC = C.arr
            const lE = E.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                const entity = entities[i]
                const c = lC[entity]
                const e = lE[entity]
                lC[entity] = e
                lE[entity] = c
            }
        }, query(prefab(prefab4)))
        .initialize()

    for (let i = 0; i < count; i++) {
        const e1 = world.createEntity()
        world.transformEntity(e1, prefab1)
        const e2 = world.createEntity()
        world.transformEntity(e2, prefab2)
        const e3 = world.createEntity()
        world.transformEntity(e3, prefab3)
        const e4 = world.createEntity()
        world.transformEntity(e4, prefab4)
    }

    return function simpleIter() {
        world.update()
    }
}
