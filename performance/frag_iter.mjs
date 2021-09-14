import { World, every } from 'piecs'

const componentTypeConfig = Array.from('ABCDEFGHIJKLMNOPQRSTUVWXYZ', (v) => ([v, {
    type: 'uint8',
    default: 0
}])).reduce((res, [name, config]) => {
    res[name] = config
    return res
}, {
    data: {
        type: 'uint8',
        default: 0
    }
})

export default function(count) {
    const world = new World(componentTypeConfig, [{
        name: 'Data',
        query: every('data'),
        execute: (entities, world) => {
            for (const entity of entities) {
                const data = world.getEntityComponent(entity, 'data')
                world.setComponentImmediate(entity, 'data', data * 2)
            }
        }
    }])

    for (let i = 0; i < count; i++) {
        for (const c of Object.keys(componentTypeConfig)) {
            const e = world.spawnEntityImmediate()
            world.setComponentImmediate(e, 'data')
            world.setComponentImmediate(e, c)
        }
    }

    return () => {
        world.update()
    }
}
