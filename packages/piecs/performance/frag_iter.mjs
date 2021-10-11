import { World, all, query, createEntitySystem } from '../dist/index.mjs'

export default function createFragIter(count) {
    const world = new World()

    const components = []
    for (let i = 0; i < 26; i++) {
        components.push(world.createComponentId())
    }
    const Data = {
        id: world.createComponentId(),
        arr: new Uint32Array(count*26).fill(1)
    }

    const prefabs = components.map(c => world.prefabricate([Data.id, c]))

    world
        .registerSystem(createEntitySystem(function dataSystem(entities) {
            const DataArray = Data.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                DataArray[entities[i]] *= 2
            }
        }, query(all(Data.id))))
        .initialize()

    for (let i = 0; i < count; i++) {
        for (const prefab of prefabs) {
            world.transformEntity(world.createEntity(), prefab)
        }
    }

    return function fragIter() {
        world.update()
    }
}
