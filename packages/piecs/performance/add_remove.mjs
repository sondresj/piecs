import { World } from '../lib/World.js'
import { all, not, and, query } from '../lib/Query.js'

export default function createAddRemove(count) {
    const world = new World()
    const A = world.getNextComponentId()
    const B = world.getNextComponentId()

    world
        .registerSystem((queryResults, world) => {
            const lB = B
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    world.setComponent(entity, lB)
                }
            }
        }, query(and(all(A), not(B))))
        .registerSystem((queryResults, world) => {
            const lB = B
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    world.removeComponent(entity, lB)
                }
            }
        }, query(all(B)))
        .init([A], [A, B])

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        world.setComponent(e, A)
    }

    return function addRemove() {
        world.update()
    }
}
