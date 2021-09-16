import { World } from '../lib/World.js'
import { every } from '../lib/Query.js'

export default function(count) {
    const world = new World()

    const A = world.createComponentSet('A', 'uint8', 0)
    const B = world.createComponentSet('B', 'uint8', 0)
    const C = world.createComponentSet('C', 'uint8', 0)
    const D = world.createComponentSet('D', 'uint8', 0)
    const E = world.createComponentSet('E', 'uint8', 0)
    world
        .registerSystem({
            name: 'ASystem',
            query: every(A),
            execute: (entities) => {
                entities(entity => {
                    const a = A.get(entity)
                    A.set(entity, a * 2)
                })
            }
        }).registerSystem({
            name: 'BSystem',
            query: every(B),
            execute: (entities) => {
                entities(entity => {
                    const b = B.get(entity)
                    A.set(entity, b * 2)
                })
            }
        }).registerSystem({
            name: 'CSystem',
            query: every(C),
            execute: (entities) => {
                entities(entity => {
                    const c = C.get(entity)
                    A.set(entity, c * 2)
                })
            }
        }).registerSystem({
            name: 'DSystem',
            query: every(D),
            execute: (entities) => {
                entities(entity => {
                    const d = D.get(entity)
                    A.set(entity, d * 2)
                })
            }
        }).registerSystem({
            name: 'ESystem',
            query: every(E),
            execute: (entities) => {
                entities(entity => {
                    const e = E.get(entity)
                    A.set(entity, e * 2)
                })
            }
        })

    world.init()

    for (let i = 0; i < count; i++) {
        const entity = world.createEntity()
        A.set(entity)
        B.set(entity)
        C.set(entity)
        D.set(entity)
        E.set(entity)
    }

    return () => {
        world.update()
    }
}
