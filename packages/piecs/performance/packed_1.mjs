import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function createPacked1(count) {
    const world = new World()
    const A = {
        id: world.getNextComponentId(),
        arr: new Uint32Array(count).fill(0)
    }
    const B = world.getNextComponentId()
    const C = world.getNextComponentId()
    const D = world.getNextComponentId()
    const E = world.getNextComponentId()

    world
        .registerSystem(function systemAp1(entities, _) {
            const AArray = A.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                AArray[entities[i]] *= 2
            }
        }, query(all(A.id, E)))

    const prefab = world.prefabricate([A.id, B, C, D, E])

    for (let i = 0; i < count; i++) {
        const entity = world.createEntity()
        world.transformEntity(entity, prefab)
    }

    return function packed1() {
        world.update()
    }
}
