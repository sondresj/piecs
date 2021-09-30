
const {
    World,
    FlagComponentSet
} = require('../../index')

const {
    and,
    // @ts-ignore
    or,
    all,
    // @ts-ignore
    any,
    not,
    query
} = require('../../glue')

module.exports = function addRemove(count) {
    const world = new World()
    // @ts-ignore
    const A = new FlagComponentSet(world)
    // @ts-ignore
    const B = new FlagComponentSet(world)

    const addBQuery = query(and(all(A.id), not(B.id)))
    const addBSystem = () => {
        const l = addBQuery.length
        // console.log('addBSystem query length', l)
        for (let a = l - 1; a >= 0; a--) {
            const entities = addBQuery.get(a)
            // console.log('addBSystem entities length in ', a, entities.length)
            for (let i = entities.length - 1; i >= 0; i--) {
                const entity = entities[i]
                B.add(entity)
                // console.log('added B to entity', entity)
            }
        }
    }

    const removeBQuery = query(and(all(B.id)))
    const removeBSystem = () => {
        const l = removeBQuery.length
        for (let a = l - 1; a >= 0; a--) {
            const entities = removeBQuery.get(a)
            for (let i = entities.length - 1; i >= 0; i--) {
                const entity = entities[i]
                B.remove(entity)
                // console.log('removed B from entity', entity)
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
        A.add(e)
    }

    return () => {
        addBSystem()
        removeBSystem()
    }
}
