import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function entityCycle(count) {
    const world = new World()
    const A = world.createComponentSet('A', 'flag', true)
    const B = world.createComponentSet('B', 'flag', true)

    world.registerSystem({
        name: 'spawnB',
        query: query(all(A.id)),
        execute: (entities, world) => {
            for (let i = entities.length - 1; i > 0; i--) {
                const entity = entities[i]
                const a = A.get(entity)
                const e1 = world.createEntity()
                B.add(e1, a)
                const e2 = world.createEntity()
                B.add(e2, a)
            }
        }
    }).registerSystem({
        name: 'killB',
        query: query(all(B.id)),
        execute: (entities, world) => {
            for (let i = entities.length - 1; i > 0; i--) {
                const entity = entities[i]
                world.deleteEntity(entity)
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
