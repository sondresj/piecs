import { World } from '../lib/World.js'
import { every } from '../lib/Query.js'

export default function packed5(count) {
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
                for (let i = entities.length - 1; i > 0; i--) {
                    const entity = entities[i]
                    const a = A.get(entity)
                    A.set(entity, a * 2)
                }
            }
        }).registerSystem({
            name: 'BSystem',
            query: every(B),
            execute: (entities) => {
                for (let i = entities.length - 1; i > 0; i--) {
                    const entity = entities[i]
                    const b = B.get(entity)
                    B.set(entity, b * 2)
                }
            }
        }).registerSystem({
            name: 'CSystem',
            query: every(C),
            execute: (entities) => {
                for (let i = entities.length - 1; i > 0; i--) {
                    const entity = entities[i]
                    const c = C.get(entity)
                    C.set(entity, c * 2)
                }
            }
        }).registerSystem({
            name: 'DSystem',
            query: every(D),
            execute: (entities) => {
                for (let i = entities.length - 1; i > 0; i--) {
                    const entity = entities[i]
                    const d = D.get(entity)
                    D.set(entity, d * 2)
                }
            }
        }).registerSystem({
            name: 'ESystem',
            query: every(E),
            execute: (entities) => {
                for (let i = entities.length - 1; i > 0; i--) {
                    const entity = entities[i]
                    const e = E.get(entity)
                    E.set(entity, e * 2)
                }
            }
        }).init()

    for (let i = 0; i < count; i++) {
        const entity = world.createEntity()
        A.add(entity)
        B.add(entity)
        C.add(entity)
        D.add(entity)
        E.add(entity)
    }

    return () => {
        world.update()
    }
}
