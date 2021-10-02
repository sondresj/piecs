import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function createPacked5(count) {
    const world = new World()

    const A = world.createComponentSet('A', 'uint8', 0)
    const B = world.createComponentSet('B', 'uint8', 0)
    const C = world.createComponentSet('C', 'uint8', 0)
    const D = world.createComponentSet('D', 'uint8', 0)
    const E = world.createComponentSet('E', 'uint8', 0)
    world
        .registerSystem((queryResults, _) => {
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const a = A.get(entity)
                    A.set(entity, a * 2)
                }
            }
        }, query(all(A.id)))
        .registerSystem((queryResults, _) => {
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const b = B.get(entity)
                    B.set(entity, b * 2)
                }
            }
        }, query(all(B.id)))
        .registerSystem((queryResults, _) => {
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const c = C.get(entity)
                    C.set(entity, c * 2)
                }
            }
        }, query(all(C.id)))
        .registerSystem((queryResults, _) => {
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const d = D.get(entity)
                    D.set(entity, d * 2)
                }
            }
        }, query(all(D.id)))
        .registerSystem((queryResults, _) => {
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const e = E.get(entity)
                    E.set(entity, e * 2)
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

    return world.update
}
