import { every, World } from 'piecs'

export default function(count) {
    const world = new World({
        a: {
            type: 'uint32',
            default: 0,
        },
        b: {
            type: 'uint32',
            default: 0
        }
    }, [{
        name: 'spawnB',
        query: every('a'),
        execute: (entities, world) => {
            for (const entity of entities) {
                const a = world.getEntityComponent(entity, 'a')
                const e1 = world.spawnEntityImmediate()
                world.setComponentImmediate(e1, 'b', a)
                const e2 = world.spawnEntityImmediate()
                world.setComponentImmediate(e2, 'b', a)
            }
        }
    }, {
        name: 'killB',
        query: every('b'),
        execute: (entities, world) => {
            for (const entity of entities) {
                world.killEntity(entity)
            }
        }
    }])

    for (let i = 0; i < count; i++) {
        const e = world.spawnEntityImmediate()
        world.setComponentImmediate(e, 'a')
    }

    return () => {
        world.update()
    }
}
