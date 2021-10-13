import { World, createEntitySystem } from '../dist/index.mjs'

export default function createAddRemove(count) {
    const world = new World()
    const A = world.createComponentId()
    const B = world.createComponentId()

    const prefabA = world.prefabricate([A])
    const prefabAB = world.prefabricate([A, B])

    world
        .registerSystem(
            createEntitySystem(
                function addB(entities, world) {
                    const lpab = prefabAB
                    for (let i = entities.length - 1; i >= 0; i--) {
                        // world.addComponentId(entities[i], B)
                        world.transformEntity(entities[i], lpab)
                    }
                },
                q => q.prefabricated(prefabA)
            )
        )
        .registerSystem(createEntitySystem(function removeB(entities, world) {
            const lpa = prefabA
            for (let i = entities.length - 1; i >= 0; i--) {
                // world.removeComponentId(entities[i], B)
                world.transformEntity(entities[i], lpa)
            }
        }, q => q.prefabricated(prefabAB)))
        .initialize()

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        world.transformEntity(e, prefabA)
    }

    return function addRemove() {
        world.update()
    }
}
