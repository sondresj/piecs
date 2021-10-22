import { World, createEntitySystem } from '../dist/index.mjs'

export default function createAddRemove(count) {
    const world = new World()
    const A = world.createComponentId()
    const B = world.createComponentId()

    const prefabA = world.prefabricate([A])
    const prefabAB = world.prefabricate([A, B])

    world
        .registerSystem(createEntitySystem(function addB(entities, world) {
            for (let i = entities.length - 1; i >= 0; i--) {
                world.transformEntity(entities[i], prefabAB)
            }
        }, q => q.prefabricated(prefabA)))
        .registerSystem(createEntitySystem(function removeB(entities, world) {
            for (let i = entities.length - 1; i >= 0; i--) {
                world.transformEntity(entities[i], prefabA)
            }
        }, q => q.prefabricated(prefabAB)))
        .initialize()

    for (let i = 0; i < count; i++) {
        const e = world.createEntity(prefabA)
    }

    return function addRemove() {
        world.update()
    }
}
