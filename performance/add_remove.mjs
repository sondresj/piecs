import { World } from '../lib/World.js'
import { every, not, and } from '../lib/Query.js'

export default function addRemove(count) {
    const world = new World()
    const A = world.createComponentSet('A', 'uint32', 0)
    const B = world.createComponentSet('B', 'uint32', 0)

    world.registerSystem({
        name: 'addB',
        query: and(every(A), not(B)),
        execute: (entities) => {
            for (let i = entities.length - 1; i > 0; i--) {
                const entity = entities[i]
                B.add(entity)
            }
        }
    }).registerSystem({
        name: 'removeB',
        query: every(B),
        execute: (entities) => {
            for (let i = entities.length - 1; i > 0; i--) {
                const entity = entities[i]
                B.remove(entity)
            }
        }
    }).init()

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        A.add(e)
    }

    return () => {
        world.update()
    }
}
