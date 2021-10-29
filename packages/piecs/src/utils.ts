import type { World } from './World'
import type { InternalQuery } from './Query'
import { Archetype, InternalArchetype, traverseArchetypeGraph } from './Archetype'

type ArchetypeStatistics = {
    /**
     * Count of entities in the archetype
     */
    entities: number
    /**
     * The id of archetypes with 1 differing componentId
     */
    adjacent: string[]
    /**
     * All the `componentIds` constituting this archetype
     */
    componentIds: number[]
} & Pick<Archetype, 'id'>

function getArchetypeStatistics(archetype: InternalArchetype): ArchetypeStatistics {
    return {
        id: archetype.id,
        componentIds: archetype.componentIds(),
        entities: archetype.entitySet.values.length,
        adjacent: archetype.adjacent.filter((a): a is InternalArchetype => !!a).map(a => a.id),
    }
}

export type WorldStatistics = {
    /**
     * Count of entities in the world
     */
    entities: number
    /**
     * Count of components in the world
     */
    components: number
    /**
     * Name or index of all systems registered in the world
     */
    systems: string[]
    /**
     * Statistics for all queries in the world
     */
    queries: {
        /**
         * `ArchetypeStatistics` for matching archetypes in this query
         */
        archetypes: ArchetypeStatistics[]
    }[]
    /**
     * `ArchetypeStatistics` for all archetypes in the world
     */
    archetypes: ArchetypeStatistics[]
}

export function getStatistics(world: World<any>): WorldStatistics {
    const archetypes: Array<ArchetypeStatistics> = []
    // @ts-ignore
    traverseArchetypeGraph(world.rootArchetype, (archetype) => {
        archetypes.push(getArchetypeStatistics(archetype))
    })
    return {
        // @ts-ignore
        entities: world.nextEntityId,
        // @ts-ignore
        components: world.nextComponentId,
        // @ts-ignore
        systems: world.systems.map((system, i) => system.execute.name || i.toString()),
        // @ts-ignore
        queries: world.systems.map((system) => ({
            archetypes: (system.query as InternalQuery).archetypes.map(a => getArchetypeStatistics(a as any))
        })),
        archetypes,
    }
}
