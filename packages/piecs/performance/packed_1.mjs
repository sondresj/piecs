import { World } from '../lib/World.js'
import { all, query } from '../lib/Query.js'

export default function createPacked1(count) {
    const world = new World()
    const A = world.createComponentSet('uint8', 0)
    const B = world.getNextComponentId() //world.createComponentSet('B', 'flag', true)
    const C = world.getNextComponentId() //world.createComponentSet('C', 'flag', true)
    const D = world.getNextComponentId() //world.createComponentSet('D', 'flag', true)
    const E = world.getNextComponentId() //world.createComponentSet('E', 'flag', true)

    world
        .registerSystem((queryResults, _) => {
            const lA = A
            for (let i = 0; i < queryResults.length; i++) {
                const entities = queryResults[i].entities
                for (let j = entities.length - 1; j >= 0; j--) {
                    const entity = entities[i]
                    const a = lA.get(entity)
                    lA.set(entity, a * 2)
                }
            }
        }, query(all(A.id)))
        .init([A.id], [A.id, B], [A.id, B, C], [A.id, B, C, D], [A.id, B, C, D, E])

    for (let i = 0; i < count; i++) {
        const entity = world.createEntity()
        A.add(entity)
        world.setComponent(entity, B)
        world.setComponent(entity, C)
        world.setComponent(entity, D)
        world.setComponent(entity, E)
    }

    return function packed1() {
        world.update()
    }
}
