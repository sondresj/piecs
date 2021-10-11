import { Archetype, Query, World } from '.'

type BaseSystem = {
    readonly query: Query
}

export type EntitySystem = BaseSystem & {
    /**
     * 0 = entitySystem
     * 1 = archetypeSystem
     */
    readonly type: 0
    execute(entities: ArrayLike<number>, world: World): void
}

export type ArchetypeSystem = BaseSystem & {
    /**
     * 0 = entitySystem
     * 1 = archetypeSystem
     */
    readonly type: 1
    execute(archetypes: ArrayLike<Archetype>, world: World): void
}

export type System = EntitySystem | ArchetypeSystem

/**
 * An entity system is a system that will be executed for each archetype that contains 1 or more entities matching the query.
 * In other words, it may be executed multiple times in each update.
 * If you need the system to only execute once in each update, use the `ArchetypeSystem` created by `createArchetypeSystem`
 * @param execute
 * @param query
 * @returns
 */
export function createEntitySystem(execute: (entities: ArrayLike<number>, world: World) => void, query: Query): EntitySystem {
    return Object.freeze({
        execute,
        query,
        type: 0
    })
}

/**
 * An archetype system is a system that that will only execute once in each update with all the archetypes matching the query.
 * This is usefull when your query potentially matches 2 or more archetypes and you need to check for the presence of a componentId on entities.
 * The differing components can be checked for once for each archetype instead of for each entity.
 * @param execute
 * @param query
 * @returns
 */
export function createArchetypeSystem(execute: (archetypes: ArrayLike<Archetype>, world: World) => void, query: Query): ArchetypeSystem {
    return Object.freeze({
        execute,
        query,
        type: 1
    })
}
