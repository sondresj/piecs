import { World, prefab, query } from '../dist/index.mjs'

export default function createAddRemove(count) {
    const world = new World()
    const A = world.getNextComponentId()
    const B = world.getNextComponentId()

    const prefabA = world.prefabricate([A])
    const prefabAB = world.prefabricate([A, B])

    world
        .registerSystem(function addB(entities, world) {
            const lpab = prefabAB
            for (let i = entities.length - 1; i >= 0; i--) {
                // world.addComponentId(entities[i], B)
                world.transformEntity(entities[i], lpab)
            }
        }, query(prefab(prefabA)))
        .registerSystem(function removeB(entities, world) {
            const lpa = prefabA
            for (let i = entities.length - 1; i >= 0; i--) {
                // world.removeComponentId(entities[i], B)
                world.transformEntity(entities[i], lpa)
            }
        }, query(prefab(prefabAB)))
        .initialize()

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        world.transformEntity(e, prefabA)
    }

    return function addRemove() {
        world.update()
    }
}
