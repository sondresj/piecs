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
        .registerSystem((queryResults, _) => {
            const AArray = A.arr
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const a = AArray[entity]
                    AArray[entity] = a * 2
                }
            }
        }, query(all(A.id)))
        .init([A.id], [A.id, B], [A.id, B, C], [A.id, B, C, D], [A.id, B, C, D, E])

    for (let i = 0; i < count; i++) {
        const entity = world.createEntity()
        world.setComponent(entity, A.id)
        world.setComponent(entity, B)
        world.setComponent(entity, C)
        world.setComponent(entity, D)
        world.setComponent(entity, E)
    }

    return function packed1() {
        world.update()
    }
}
