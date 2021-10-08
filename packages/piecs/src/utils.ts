import type { World } from './World'
import { Archetype, InternalArchetype, traverseArchetypeGraph } from './Archetype'

type ArchetypeStatistics = {
    entities: number
    parent: string | null
    adjacent: string[]
} & Archetype

function getArchetypeStatistics(archetype: InternalArchetype): ArchetypeStatistics {
    return {
        id: archetype.id,
        componentIds: archetype.componentIds,
        entities: archetype.entitySet.values.length,
        adjacent: archetype.adjacent.filter((a): a is InternalArchetype => !!a).map(a => a.id),
        parent: archetype.parent ? archetype.parent.id : null
    }
}

export type WorldStatistics = {
    entities: number
    components: number
    systems: string[]
    queries: {
        archetypes: ArchetypeStatistics[]
    }[]
    archetypes: ArchetypeStatistics[]
}

export function getStatistics(world: World): WorldStatistics {
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
        systems: world.systems.map((system, i) => system.name || i.toString()),
        // @ts-ignore
        queries: world.queries.map((query) => ({
            archetypes: query.archetypes.map(a => getArchetypeStatistics(a as any))
        })),
        archetypes,
    }
}
