import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function createEntityCycle(count) {
    const world = new World()
    const A = world.getNextComponentId()
    const B = world.getNextComponentId()

    world
        .registerSystem((entities, world) => {
            const lB = B
            for (let i = 0, l = entities.length; i < l; i++) {
                world.addComponent(world.createEntity(), lB)
                world.addComponent(world.createEntity(), lB)
            }
        }, query(all(A)))
        .registerSystem((entities, world) => {
            for (let i = entities.length - 1; i >= 0; i--) {
                world.deleteEntity(entities[i])
            }
        }, query(all(B)))
        .init([A], [B])

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        world.addComponent(e, A)
    }

    return function entityCycle() {
        world.update()
    }
}
