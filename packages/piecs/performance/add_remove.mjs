import { World } from '../lib/World.js'
import { all, not, and, query } from '../lib/Query.js'

export default function createAddRemove(count) {
    const world = new World()
    const A = world.getNextComponentId()
    const B = world.getNextComponentId()

    world
        .registerSystem(function addB(entities, world) {
            const lB = B
            // while (entities.length) {
            for (let i = entities.length - 1; i >= 0; i--) {
                world.addComponentId(entities[i], lB)
            }
        }, query(and(all(A), not(B))))
        .registerSystem(function removeB(entities, world) {
            const lB = B
            for (let i = entities.length - 1; i >= 0; i--) {
                world.subtractComponentId(entities[i], lB)
            }
        }, query(all(B)))

    const prefabA = world.prefabricate([A])
    world.prefabricate([B])

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        // world.addComponent(e, A)
        world.transformEntity(e, prefabA)
    }

    return function addRemove() {
        world.update()
    }
}
