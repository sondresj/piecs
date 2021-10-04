import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

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

    world
        .registerSystem((entities, _) => {
            const lA = A.arr
            const lB = B.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                const entity = entities[i]
                const a = lA[entity]
                const b = lB[entity]
                lA[entity] = b
                lB[entity] = a
            }
        }, query(all(A.id, B.id)))
        .registerSystem((entities, _) => {
            const lC = C.arr
            const lD = D.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                const entity = entities[i]
                const c = lC[entity]
                const d = lD[entity]
                lC[entity] = d
                lD[entity] = c
            }
        }, query(all(C.id, D.id)))
        .registerSystem((entities, _) => {
            const lC = C.arr
            const lE = E.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                const entity = entities[i]
                const c = lC[entity]
                const e = lE[entity]
                lC[entity] = e
                lE[entity] = c
            }
        }, query(all(C.id, E.id)))
        .init([A.id], [A.id, B.id], [A.id, B.id, C.id], [A.id, B.id, C.id, D.id], [A.id, B.id, C.id, E.id])

    for (let i = 0; i < count; i++) {
        const e1 = world.createEntity()
        world.addComponent[e1, A.id]
        world.addComponent[e1, B.id]
        const e2 = world.createEntity()
        world.addComponent(e2, A.id)
        world.addComponent(e2, B.id)
        world.addComponent(e2, C.id)
        const e3 = world.createEntity()
        world.addComponent(e3, A.id)
        world.addComponent(e3, B.id)
        world.addComponent(e3, C.id)
        world.addComponent(e3, D.id)
        const e4 = world.createEntity()
        world.addComponent(e4, A.id)
        world.addComponent(e4, B.id)
        world.addComponent(e4, C.id)
        world.addComponent(e4, E.id)
    }

    return function simpleIter() {
        world.update()
    }
}
