import { World } from '../lib/World.js'
import { every } from '../lib/Query.js'

const components = {}

export default function(count) {
    const world = new World()
    Array.from('ABCDEFGHIJKLMNOPQRSTUVWXYZ').forEach(name => {
        components[name] = world.createComponentSet(name, 'uint8', 0)
    })

    const Data = world.createComponentSet('Data', 'uint8', 0)
    world.registerSystem({
        name: 'DataSys',
        query: every(Data),
        execute: (entities) => {
            entities(entity => {
                const data = Data.get(entity)
                Data.set(entity, data * 2)
            })
        }
    })

    world.init()

    for (let i = 0; i < count; i++) {
        for (const c of Object.values(components)) {
            const e = world.createEntity()
            Data.set(e, 1)
            c.set(e, 1)
        }
    }

    return () => {
        world.update()
    }
}
