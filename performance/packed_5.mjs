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
    }, {
        name: 'BSystem',
        query: every('b'),
        execute: (entities, world) => {
            for (const entity of entities) {
                const b = world.getEntityComponent(entity, 'b')
                world.setComponentImmediate(entity, 'b', b * 2)
            }
        }
    }, {
        name: 'CSystem',
        query: every('c'),
        execute: (entities, world) => {
            for (const entity of entities) {
                const c = world.getEntityComponent(entity, 'c')
                world.setComponentImmediate(entity, 'c', c * 2)
            }
        }
    }, {
        name: 'DSystem',
        query: every('d'),
        execute: (entities, world) => {
            for (const entity of entities) {
                const d = world.getEntityComponent(entity, 'd')
                world.setComponentImmediate(entity, 'd', d * 2)
            }
        }
    }, {
        name: 'ESystem',
        query: every('e'),
        execute: (entities, world) => {
            for (const entity of entities) {
                const e = world.getEntityComponent(entity, 'e')
                world.setComponentImmediate(entity, 'e', e * 2)
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
