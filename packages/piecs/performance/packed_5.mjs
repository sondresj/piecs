import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function createPacked5(count) {
    const world = new World()

    const A = world.createComponentSet('uint8', 0)
    const B = world.createComponentSet('uint8', 0)
    const C = world.createComponentSet('uint8', 0)
    const D = world.createComponentSet('uint8', 0)
    const E = world.createComponentSet('uint8', 0)
    world
        .registerSystem((queryResults, _) => {
            const lA = A
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const a = lA.get(entity)
                    lA.set(entity, a * 2)
                }
            }
        }, query(all(A.id)))
        .registerSystem((queryResults, _) => {
            const lB = B
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const b = lB.get(entity)
                    lB.set(entity, b * 2)
                }
            }
        }, query(all(B.id)))
        .registerSystem((queryResults, _) => {
            const lC = C
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const c = lC.get(entity)
                    lC.set(entity, c * 2)
                }
            }
        }, query(all(C.id)))
        .registerSystem((queryResults, _) => {
            const lD = D
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const d = lD.get(entity)
                    lD.set(entity, d * 2)
                }
            }
        }, query(all(D.id)))
        .registerSystem((queryResults, _) => {
            const lE = E
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const e = lE.get(entity)
                    lE.set(entity, e * 2)
                }
            }
        }, query(all(E.id)))
        .init([A.id], [A.id, B.id], [A.id, B.id, C.id], [A.id, B.id, C.id, D.id], [A.id, B.id, C.id, D.id, E.id])

    for (let i = 0; i < count; i++) {
        const entity = world.createEntity()
        A.add(entity)
        B.add(entity)
        C.add(entity)
        D.add(entity)
        E.add(entity)
    }

    return function packed5() {
        world.update()
    }
}
