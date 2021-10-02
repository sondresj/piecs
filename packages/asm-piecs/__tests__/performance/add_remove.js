
const {
    World,
    __collect
} = require('../../index')

const {
    and,
    all,
    not,
    query
} = require('../../glue')

module.exports = function addRemove(count) {
    const world = new World()
    // @ts-ignore
    const A = world.getNextComponentId() //new FlagComponentSet(world)
    // @ts-ignore
    const B = world.getNextComponentId() //new FlagComponentSet(world)

    const addBQuery = query(and(all(A), not(B)))
    const addBSystem = () => {
        const l = addBQuery.length
        for (let a = l - 1; a >= 0; a--) {
            const entities = addBQuery.get(a)
            for (let i = entities.length - 1; i >= 0; i--) {
                const entity = entities[i]
                // B.add(entity)
                world.setComponent(entity, B)
            }
        }
    }

    const removeBQuery = query(and(all(B)))
    const removeBSystem = () => {
        const l = removeBQuery.length
        for (let a = l - 1; a >= 0; a--) {
            const entities = removeBQuery.get(a)
            for (let i = entities.length - 1; i >= 0; i--) {
                const entity = entities[i]
                // B.remove(entity)
                world.removeComponent(entity, B)
            }
        }
    }

    // @ts-ignore
    world.registerQuery(addBQuery.__ptr)
    // @ts-ignore
    world.registerQuery(removeBQuery.__ptr)
    world.init()

    for (let i = 0; i < count; i++) {
        const e = world.createEntity()
        world.setComponent(e, A)
        // A.add(e)
    }

    return () => {
        addBSystem()
        removeBSystem()
    }
}
