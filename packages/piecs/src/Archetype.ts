import type { BitSet } from './collections/BitSet'
import type { Query } from './Query'
import { createSparseSet, SparseSet } from './collections/SparseSet'

export type Archetype = {
    readonly mask: BitSet
    readonly entitySet: SparseSet
    readonly adjacent: Archetype[]

    transform (
        componentId: number,
        queries: Query[]
    ): Archetype
}

export function createArchetype(bitmask: BitSet): Archetype {
    const mask = bitmask
    const entitySet = createSparseSet()
    const adjacent: Archetype[] = []

    return {
        mask,
        entitySet,
        adjacent,
        transform: function(
            componentId: number,
            queries: Query[]
        ): Archetype {
            if (adjacent[componentId]) {
                return adjacent[componentId]!
            }

            // Relying on the fact that most likely, there won't be more than one path to an archetype
            // If there is, there will be duplicate archetypes that contains a different set of entities that arrived at the archetype in different ways.
            // That's ok tho, i think?

            const nextMask = mask.copy().xor(componentId)
            const archetype = createArchetype(nextMask)
            const ql = queries.length
            for (let i = 0; i < ql; i++) {
                const query = queries[i]!
                query.tryAdd(archetype)
            }

            // connect archetype in graph
            archetype.adjacent[componentId] = this // archetype has the componentId, so the only direction a transform can go with that componentId, is back here.
            adjacent[componentId] = archetype

            return archetype
        },
    }
}

export function traverseArchetypeGraph(archetype: Archetype, callback: (archetype: Archetype) => boolean | void) {
    if (callback(archetype) === false) return
    const adjacent = archetype.adjacent
    const l = adjacent.length
    for (let i = 0; i < l; i++) {
        const arch = adjacent[i]
        // adjacent is sparse, so there can be empty slots
        if (!arch) continue
        traverseArchetypeGraph(arch, callback)
    }
}
