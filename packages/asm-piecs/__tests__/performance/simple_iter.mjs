import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function simpleIter(count) {
    const world = new World()
    const A = world.createComponentSet('a', 'uint8', 0)
    const B = world.createComponentSet('b', 'uint8', 0)
    const C = world.createComponentSet('c', 'uint8', 0)
    const D = world.createComponentSet('d', 'uint8', 0)
    const E = world.createComponentSet('e', 'uint8', 0)

    world
        .registerSystem({
            name: 'ABSystem',
            query: query(all(A.id, B.id)),
            execute: (entities) => {
                for (let i = entities.length - 1; i > 0; i--) {
                    const entity = entities[i]
                    const a = A.get(entity)
                    const b = B.get(entity)
                    A.set(entity, b)
                    B.set(entity, a)
                }
            }
        })
        .registerSystem({
            name: 'CDSystem',
            query: query(all(C.id, D.id)),
            execute: (entities) => {
                for (let i = entities.length - 1; i > 0; i--) {
                    const entity = entities[i]
                    const c = C.get(entity)
                    const d = D.get(entity)
                    C.set(entity, d)
                    D.set(entity, c)
                }
            }
        })
        .registerSystem({
            name: 'CESystem',
            query: query(all(C.id, E.id)),
            execute: (entities) => {
                for (let i = entities.length - 1; i > 0; i--) {
                    const entity = entities[i]
                    const c = C.get(entity)
                    const e = E.get(entity)
                    C.set(entity, e)
                    E.set(entity, c)
                }
            }
        })
        .init()

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

    return () => {
        world.update()
    }
}
