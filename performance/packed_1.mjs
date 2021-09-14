import { every, World } from 'piecs'

export default function(count) {
    const world = new World({
        a: {
            type: 'uint8',
            default: 0
        },
        b: {
            type: 'uint8',
            default: 0
        },
        c: {
            type: 'uint8',
            default: 0
        },
        d: {
            type: 'uint8',
            default: 0
        },
        e: {
            type: 'uint8',
            default: 0
        },
    }, [{
        name: 'ASystem',
        query: every('a'),
        execute: (entities, world) => {
            for (const entity of entities) {
                const a = world.getEntityComponent(entity, 'a')
                world.setComponentImmediate(entity, 'a', a * 2)
            }
        }
    }])

    for (let i = 0; i < count; i++) {
        const entity = world.spawnEntityImmediate()
        world
            .setComponentImmediate(entity, 'a')
            .setComponentImmediate(entity, 'b')
            .setComponentImmediate(entity, 'c')
            .setComponentImmediate(entity, 'd')
            .setComponentImmediate(entity, 'e')
    }

    return () => {
        world.update()
    }
}
