import { WorldBuilder } from '../lib/World.js'
import { every } from '../lib/Query.js'

export default function(count) {
    const builder = new WorldBuilder()
    const A = builder.createComponentSet('a', 'uint8', 0)
    const B = builder.createComponentSet('b', 'uint8', 0)
    const C = builder.createComponentSet('c', 'uint8', 0)
    const D = builder.createComponentSet('d', 'uint8', 0)
    const E = builder.createComponentSet('e', 'uint8', 0)

    const world = builder
        .registerSystem({
            name: 'ABSystem',
            query: every(A, B),
            execute: (entities) => {
                entities(entity => {
                    const a = A.get(entity)
                    const b = B.get(entity)
                    A.set(entity, b)
                    B.set(entity, a)
                })
            }
        })
        .registerSystem({
            name: 'CDSystem',
            query: every(C, D),
            execute: (entities) => {
                entities(entity => {
                    const c = C.get(entity)
                    const d = D.get(entity)
                    C.set(entity, d)
                    D.set(entity, c)
                })
            }
        })
        .registerSystem({
            name: 'CESystem',
            query: every(C, E),
            execute: (entities) => {
                entities(entity => {
                    const c = C.get(entity)
                    const e = E.get(entity)
                    C.set(entity, e)
                    E.set(entity, c)
                })
            }
        })
        .build()

    for (let i = 0; i < count; i++) {
        const e1 = world.createEntity()
        A.set(e1, 0)
        B.set(e1, 1)
        const e2 = world.createEntity()
        A.set(e2, 0)
        B.set(e2, 1)
        C.set(e2, 2)
        const e3 = world.createEntity()
        A.set(e3, 0)
        B.set(e3, 1)
        C.set(e3, 2)
        D.set(e3, 3)
        const e4 = world.createEntity()
        A.set(e4, 0)
        B.set(e4, 1)
        C.set(e4, 2)
        E.set(e4, 4)
    }

    return () => {
        world.update()
    }
}
