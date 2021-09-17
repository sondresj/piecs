import { WorldBuilder } from '../lib/World.js'
import { every } from '../lib/Query.js'

export default function(count) {
    const builder = new WorldBuilder()
    const A = builder.createComponentSet('A', 'uint32', 0)
    const B = builder.createComponentSet('B', 'uint32', 0)

    builder.registerSystem({
        name: 'spawnB',
        query: every(A),
        execute: (entities, world) => {
            entities(entity => {
                const a = A.get(entity)
                const e1 = world.createEntity()
                B.set(e1, a)
                const e2 = world.createEntity()
                B.set(e2, a)
            })
        }
    }).registerSystem({
        name: 'killB',
        query: every(B),
        execute: (entities, world) => {
            entities(world.deleteEntity)
        }
    })

    const world = builder.build()

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        A.set(e)
    }

    return () => {
        world.update()
    }
}
