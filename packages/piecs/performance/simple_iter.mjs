import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function createSimpleIter(count) {
    const world = new World()
    const A = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(0)
    }
    const B = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(0)
    }
    const C = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(0)
    }
    const D = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(0)
    }
    const E = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(0)
    }

    world
        .registerSystem((queryResults, _) => {
            const lA = A
            const lB = B
            for (let i = 0, l = queryResults.length; i < l; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const a = lA.arr[entity]
                    const b = lB.arr[entity]
                    lA.arr[entity] = b
                    lB.arr[entity] = a
                }
            }
        }, query(all(A.id, B.id)))
        .registerSystem((queryResults, _) => {
            const lC = C
            const lD = D
            for (let i = 0, l = queryResults.length; i < l; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const c = lC.arr[entity]
                    const d = lD.arr[entity]
                    lC.arr[entity] = d
                    lD.arr[entity] = c
                }
            }
        }, query(all(C.id, D.id)))
        .registerSystem((queryResults, _) => {
            const lC = C
            const lE = E
            for (let i = 0, l = queryResults.length; i < l; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const c = lC.arr[entity]
                    const e = lE.arr[entity]
                    lC.arr[entity] = e
                    lE.arr[entity] = c
                }
            }
        }, query(all(C.id, E.id)))
        .init([A.id], [A.id, B.id], [A.id, B.id, C.id], [A.id, B.id, C.id, D.id], [A.id, B.id, C.id, E.id])

    for (let i = 0; i < count; i++) {
        const e1 = world.createEntity()
        world.setComponent[e1, A.id]
        world.setComponent[e1, B.id]
        const e2 = world.createEntity()
        world.setComponent(e2, A.id)
        world.setComponent(e2, B.id)
        world.setComponent(e2, C.id)
        const e3 = world.createEntity()
        world.setComponent(e3, A.id)
        world.setComponent(e3, B.id)
        world.setComponent(e3, C.id)
        world.setComponent(e3, D.id)
        const e4 = world.createEntity()
        world.setComponent(e4, A.id)
        world.setComponent(e4, B.id)
        world.setComponent(e4, C.id)
        world.setComponent(e4, E.id)
    }

    return function simpleIter() {
        world.update()
    }
}
