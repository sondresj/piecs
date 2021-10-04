import { World } from '../lib/World.js'
import { all, not, and, query } from '../lib/Query.js'

export default function createAddRemove(count) {
    const world = new World()
    const A = world.getNextComponentId()
    const B = world.getNextComponentId()

    world
        .registerSystem(function addB(entities, world) {
            const lB = B
            while (entities.length) {
                world.addComponent(entities[0], lB)
            }
        }, query(and(all(A), not(B))))
        .registerSystem(function removeB(entities, world) {
            const lB = B
            for (let i = entities.length - 1; i >= 0; i--) {
                world.removeComponent(entities[i], lB)
            }
        }, query(all(B)))
        .init([A], [A, B])

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        world.addComponent(e, A)
    }

    return function addRemove() {
        world.update()
    }
}
