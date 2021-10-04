import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function createPacked5(count) {
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
            const AArray = A.arr
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const a = AArray[entity]
                    AArray[entity] = a * 2
                }
            }
        }, query(all(A.id)))
        .registerSystem((queryResults, _) => {
            const BArray = B.arr
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const b = BArray[entity]
                    BArray[entity] = b * 2
                }
            }
        }, query(all(B.id)))
        .registerSystem((queryResults, _) => {
            const CArray = C.arr
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const c = CArray[entity]
                    CArray[entity] = c * 2
                }
            }
        }, query(all(C.id)))
        .registerSystem((queryResults, _) => {
            const DArray = D.arr
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const d = DArray[entity]
                    DArray[entity] = d * 2
                }
            }
        }, query(all(D.id)))
        .registerSystem((queryResults, _) => {
            const arr = E.arr
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const e = arr[entity]
                    arr[entity] = e * 2
                }
            }
        }, query(all(E.id)))
        .init([A.id], [A.id, B.id], [A.id, B.id, C.id], [A.id, B.id, C.id, D.id], [A.id, B.id, C.id, D.id, E.id])

    for (let i = 0; i < count; i++) {
        const entity = world.createEntity()
        world.setComponent(entity, A.id)
        world.setComponent(entity, B.id)
        world.setComponent(entity, C.id)
        world.setComponent(entity, D.id)
        world.setComponent(entity, E.id)
    }

    return function packed5() {
        world.update()
    }
}
