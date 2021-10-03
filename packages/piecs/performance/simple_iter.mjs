import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function createSimpleIter(count) {
    const world = new World()
    const A = world.createComponentSet('uint8', 0)
    const B = world.createComponentSet('uint8', 0)
    const C = world.createComponentSet('uint8', 0)
    const D = world.createComponentSet('uint8', 0)
    const E = world.createComponentSet('uint8', 0)

    world
        .registerSystem((queryResults, _) => {
            const lA = A
            const lB = B
            for (let i = 0, l = queryResults.length; i < l; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const a = lA.get(entity)
                    const b = lB.get(entity)
                    lA.set(entity, b)
                    lB.set(entity, a)
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
                    const c = lC.get(entity)
                    const d = lD.get(entity)
                    lC.set(entity, d)
                    lD.set(entity, c)
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
                    const c = lC.get(entity)
                    const e = lE.get(entity)
                    lC.set(entity, e)
                    lE.set(entity, c)
                }
            }
        }, query(all(C.id, E.id)))
        .init([A.id], [A.id, B.id], [A.id, B.id, C.id], [A.id, B.id, C.id, D.id], [A.id, B.id, C.id, E.id])

    for (let i = 0; i < count; i++) {
        const e1 = world.createEntity()
        A.add(e1, 0)
        B.add(e1, 1)
        const e2 = world.createEntity()
        A.add(e2, 0)
        B.add(e2, 1)
        C.add(e2, 2)
        const e3 = world.createEntity()
        A.add(e3, 0)
        B.add(e3, 1)
        C.add(e3, 2)
        D.add(e3, 3)
        const e4 = world.createEntity()
        A.add(e4, 0)
        B.add(e4, 1)
        C.add(e4, 2)
        E.add(e4, 4)
    }

    return function simpleIter() {
        world.update()
    }
}
