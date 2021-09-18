import { World } from '../lib/World.js'
import { every } from '../lib/Query.js'

export default function entityCycle(count) {
    const world = new World()
    const A = world.createComponentSet('A', 'uint32', 0)
    const B = world.createComponentSet('B', 'uint32', 0)

    world.registerSystem({
        name: 'spawnB',
        query: every(A),
        execute: (entities, world) => {
            for (let i = entities.length - 1; i > 0; i--) {
                const entity = entities[i]
                const a = A.get(entity)
                const e1 = world.createEntity()
                B.set(e1, a)
                const e2 = world.createEntity()
                B.set(e2, a)
            }
        }
    }).registerSystem({
        name: 'killB',
        query: every(B),
        execute: (entities, world) => {
            for (let i = entities.length - 1; i > 0; i--) {
                const entity = entities[i]
                world.deleteEntity(entity)
            }
        }
    }).init()

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        A.set(e)
    }

    return () => {
        world.update()
    }
}
