import { WorldBuilder } from '../lib/World.js'
import { every } from '../lib/Query.js'

export default function(count) {
    const builder = new WorldBuilder()

    const A = builder.createComponentSet('A', 'uint8', 0)
    const B = builder.createComponentSet('B', 'uint8', 0)
    const C = builder.createComponentSet('C', 'uint8', 0)
    const D = builder.createComponentSet('D', 'uint8', 0)
    const E = builder.createComponentSet('E', 'uint8', 0)
    builder
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

    const world = builder.build()

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
