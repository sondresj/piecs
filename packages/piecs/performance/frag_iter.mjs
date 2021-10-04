import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

const components = {}

export default function createFragIter(count) {
    const world = new World()

    Array.from('ABCDEFGHIJKLMNOPQRSTUVWXYZ').forEach(name => {
        components[name] = world.getNextComponentId() //world.createComponentSet(name, 'flag', true)
    })
    const Data = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(0)
    }

    world
        .registerSystem((queryResults, world) => {
            const DataArray = Data.arr
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const data = DataArray[entity]
                    DataArray[entity] = data * 2
                }
            }
        },  query(all(Data.id)))
        .init(...Object.values(components).map(c => [c, Data.id]))

    for (let i = 0; i < count; i++) {
        for (const c of Object.values(components)) {
            const e = world.createEntity()
            world.setComponent(e, c)
            world.setComponent(e, Data.id)
        }
    }

    return function fragIter() {
        world.update()
    }
}
