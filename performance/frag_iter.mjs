import { WorldBuilder } from '../lib/World.js'
import { every } from '../lib/Query.js'

const components = {}

export default function(count) {
    const builder = new WorldBuilder()

    Array.from('ABCDEFGHIJKLMNOPQRSTUVWXYZ').forEach(name => {
        components[name] = builder.createComponentSet(name, 'uint8', 0)
    })
    const Data = builder.createComponentSet('Data', 'uint8', 0)

    builder.registerSystem({
        name: 'DataSys',
        query: every(Data),
        execute: (entities) => {
            entities(entity => {
                const data = Data.get(entity)
                Data.set(entity, data * 2)
            })
        }
    })

    const world = builder.build()

    for (let i = 0; i < count; i++) {
        for (const c of Object.values(components)) {
            const e = world.createEntity()
            Data.set(e, 0)
            c.set(e, 0)
        }
    }

    return () => {
        world.update()
    }
}
