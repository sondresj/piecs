import type { Archetype } from './Archetype'
import type { World } from './World'
import { QueryBuilder, Query, query as buildQuery } from './Query'

type BaseSystem = {
    readonly query: Query
}

export type EntitySystem<TUpdateArguments extends any[] = never> = BaseSystem & {
    /**
     * 0 = entitySystem
     * 1 = archetypeSystem
     */
    readonly type: 0
    execute(entities: ArrayLike<number>, world: World<TUpdateArguments>, ...args: TUpdateArguments): void
}

export type ArchetypeSystem<TUpdateArguments extends any[] = never> = BaseSystem & {
    /**
     * 0 = entitySystem
     * 1 = archetypeSystem
     */
    readonly type: 1
    execute(archetypes: ArrayLike<Archetype>, world: World<TUpdateArguments>, ...args: TUpdateArguments): void
}

export type System<TUpdateArguments extends any[] = never> = EntitySystem<TUpdateArguments> | ArchetypeSystem<TUpdateArguments>

/**
 * An entity system is a system that will be executed for each archetype matching the query.
 * In other words, it may be executed multiple times in each update.
 * If you need the system to only execute once in each update, use the `ArchetypeSystem` created by `createArchetypeSystem`
 * @param execute
 * @param query
 * @returns
 */
export function createEntitySystem<TUpdateArguments extends any[] = never>(
    execute: (entities: ArrayLike<number>, world: World<TUpdateArguments>, ...args: TUpdateArguments) => void,
    query: Query | ((buildQuery: QueryBuilder) => QueryBuilder)
): EntitySystem<TUpdateArguments> {
    query = typeof query === 'function'
        ? buildQuery(query)
        : query
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
 * @param queryParams
 * @returns
 */
export function createArchetypeSystem<TUpdateArguments extends any[] = never>(
    execute: (archetypes: ArrayLike<Archetype>, world: World<TUpdateArguments>, ...args: TUpdateArguments) => void,
    query: Query | ((buildQuery: QueryBuilder) => QueryBuilder)
): ArchetypeSystem<TUpdateArguments> {
    query = typeof query === 'function'
        ? buildQuery(query)
        : query
    return Object.freeze({
        execute,
        query,
        type: 1
    })
}
