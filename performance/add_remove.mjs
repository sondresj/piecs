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
            entities(entity => {
                B.set(entity)
            })
        }
    }).registerSystem({
        name: 'removeB',
        query: every(B),
        execute: (entities) => {
            entities(entity => {
                B.remove(entity)
            })
        }
    })

    world.init()

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        A.set(e)
    }

    return () => {
        world.update()
    }
}
