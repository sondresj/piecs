import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function createEntityCycle(count) {
    const world = new World()
    const A = world.getNextComponentId()
    const B = world.getNextComponentId() //world.createComponentSet('B', 'flag', true)

    world
        .registerSystem((queryResults, world) => {
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const e1 = world.createEntity()
                    world.setComponent(e1, B)
                    const e2 = world.createEntity()
                    world.setComponent(e2, B)
                }
            }
        }, query(all(A)))
        .registerSystem((queryResults, world) => {
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[j]
                    world.deleteEntity(entity)
                }
            }
        }, query(all(B)))
        .init([A], [B])

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        world.setComponent(e, A)
    }

    return world.update
}
