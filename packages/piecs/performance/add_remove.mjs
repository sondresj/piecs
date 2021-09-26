import { World } from '../lib/World.js'
import { all, not, and, query } from '../lib/Query.js'

export default function addRemove(count) {
    const world = new World()
    const A = world.createComponentSet('A', 'flag', true)
    const B = world.createComponentSet('B', 'flag', true)

    world.registerSystem({
        name: 'addB',
        query: query(and(all(A.id), not(B.id))),
        execute: (entities) => {
            for (let i = entities.length - 1; i > 0; i--) {
                const entity = entities[i]
                B.add(entity)
            }
        }
    }).registerSystem({
        name: 'removeB',
        query: query(all(B.id)),
        execute: (entities) => {
            for (let i = entities.length - 1; i > 0; i--) {
                const entity = entities[i]
                B.remove(entity)
            }
        }
    }).init()

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        A.add(e)
    }

    return () => {
        world.update()
    }
}
