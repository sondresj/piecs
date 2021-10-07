import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function createFragIter(count) {
    const world = new World()

    const components = []
    for (let i = 0; i < 26; i++) {
        components.push(world.getNextComponentId())
    }
    const Data = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count*26).fill(1)
    }

    world
        .registerSystem(function dataSystem(entities, _) {
            const DataArray = Data.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                DataArray[entities[i]] *= 2
            }
        }, query(all(Data.id)))

    const prefabs = components.map(c => world.prefabricate([c, Data.id]))

    for (let i = 0; i < count; i++) {
        for (const prefab of prefabs) {
            const e = world.createEntity()
            world.transformEntity(e, prefab)
        }
    }

    return function fragIter() {
        world.update()
    }
}
