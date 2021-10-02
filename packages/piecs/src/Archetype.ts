import { BitSet } from './collections/BitSet'
import { createSparseSet, SparseSet } from './collections/SparseSet'
import { Query } from './Query'

export type Archetype = {
    readonly id: string
    readonly mask: BitSet
    readonly entitySet: SparseSet
    readonly entities: ReadonlyArray<number>
    readonly adjacent: Archetype[]

    transform (
        componentId: number,
        queries: Query[]
    ): Archetype
}

export function createArchetype(bitmask: BitSet): Archetype {
    const mask = bitmask.copy()
    const id = mask.toString()
    const entitySet = createSparseSet()
    const adjacent: Archetype[] = []

    return {
        id,
        mask,
        entitySet: entitySet,
        entities: entitySet.values,
        adjacent,
        transform: function(
            componentId: number,
            queries: Query[]
        ): Archetype {
            let archetype = adjacent[componentId]
            if (archetype) {
                return archetype
            }

            const nextMask = mask.copy().xor(componentId)
            archetype = createArchetype(nextMask)
            const ql = queries.length
            for (let i = 0; i < ql; i++) {
                const query = queries[i]!
                query.tryAdd(archetype)
            }

            // connect archetypes in graph
            archetype.adjacent[componentId] = this
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
