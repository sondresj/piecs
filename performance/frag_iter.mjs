import { World } from '../lib/World.js'
import { every } from '../lib/Query.js'

const components = {}

export default function fragIter(count) {
    const world = new World()

    Array.from('ABCDEFGHIJKLMNOPQRSTUVWXYZ').forEach(name => {
        components[name] = world.createComponentSet(name, 'flag', true)
    })
    const Data = world.createComponentSet('Data', 'uint8', 0)

    world.registerSystem({
        name: 'DataSys',
        query: every(Data),
        execute: (entities) => {
            for (let i = entities.length - 1; i > 0; i--) {
                const entity = entities[i]
                const data = Data.get(entity)
                Data.set(entity, data * 2)
            }
        }
    }).init()

    for (let i = 0; i < count; i++) {
        for (const c of Object.values(components)) {
            const e = world.createEntity()
            Data.add(e, 0)
            c.add(e)
        }
    }

    return () => {
        world.update()
    }
}
