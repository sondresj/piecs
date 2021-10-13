import { World, createEntitySystem } from '../dist/index.mjs'

export default function createPacked1(count) {
    const world = new World()
    const A = {
        id: world.createComponentId(),
        arr: new Uint32Array(count).fill(0)
    }
    const B = world.createComponentId()
    const C = world.createComponentId()
    const D = world.createComponentId()
    const E = world.createComponentId()

    const p = world.prefabricate([A.id, B, C, D, E])

    world
        .registerSystem(createEntitySystem(function systemAp1(entities) {
            const AArray = A.arr
            for (let i = 0, l = entities.length; i < l; i++) {
                AArray[entities[i]] *= 2
            }
        }, q => q.prefabricated(p)))
        .initialize()

    for (let i = 0; i < count; i++) {
        const entity = world.createEntity()
        world.transformEntity(entity, p)
    }

    return function packed1() {
        world.update()
    }
}
