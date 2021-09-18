import { World } from '../lib/World.js'
import { every } from '../lib/Query.js'

export default function packed1(count) {
    const world = new World()
    const A = world.createComponentSet('A', 'uint8', 0)
    const B = world.createComponentSet('B', 'uint8', 0)
    const C = world.createComponentSet('C', 'uint8', 0)
    const D = world.createComponentSet('D', 'uint8', 0)
    const E = world.createComponentSet('E', 'uint8', 0)
    world.registerSystem({
        name: 'ASys',
        query: every(A),
        execute: (entities) => {
            for (let i = entities.length - 1; i > 0; i--) {
                const entity = entities[i]
                const a = A.get(entity)
                A.set(entity, a * 2)
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
