import { World, prefab, query } from '../dist/index.mjs'

export default function createEntityCycle(count) {
    const world = new World()
    const A = world.getNextComponentId()
    const B = world.getNextComponentId()

    const prefabA = world.prefabricate([A])
    const prefabB = world.prefabricate([B])

    world
        .registerSystem(function spawnBs(entities, world) {
            const lpb = prefabB
            for (let i = 0, l = entities.length; i < l; i++) {
                world.transformEntity(world.createEntity(), lpb)
                world.transformEntity(world.createEntity(), lpb)
            }
        }, query(prefab(prefabA)))
        .registerSystem(function deleteBs(entities, world) {
            for (let i = entities.length - 1; i >= 0; i--) {
                world.deleteEntity(entities[i])
            }
        }, query(prefab(prefabB)))
        .initialize()

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        world.transformEntity(e, prefabA)
    }

    return function entityCycle() {
        world.update()
    }
}
