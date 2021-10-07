import type { ReadonlyBitSet } from './collections/BitSet'
import type { InternalQuery } from './Query'
import { createSparseSet, SparseSet } from './collections/SparseSet'

export type InternalArchetype = {
    readonly mask: ReadonlyBitSet
    readonly entitySet: SparseSet
    readonly adjacent: InternalArchetype[]
    readonly parent: InternalArchetype | null
    readonly transform: (
        componentId: number,
        queries: InternalQuery[]
    ) => InternalArchetype
} & Archetype

export type Archetype = {
    readonly id: string
}

export function createArchetype(id: string, mask: ReadonlyBitSet, parent: InternalArchetype | null): InternalArchetype {
    const entitySet = createSparseSet()
    const adjacent: InternalArchetype[] = []

    return {
        id,
        mask,
        entitySet,
        adjacent,
        parent,
        transform: function(
            componentId: number,
            queries: InternalQuery[]
        ): InternalArchetype {
            if (adjacent[componentId]) {
                return adjacent[componentId]!
            }

            const nextMask = mask.copy().xor(componentId)
            const nextMaskString = nextMask.toString()
            let existingArchetype: InternalArchetype | null = null
            if (parent !== null) {
                // find existing archetype in graph
                traverseArchetypeGraph(parent, (archetype) => {
                    if (archetype === this) return false
                    if (archetype.id === nextMaskString) {
                        existingArchetype = archetype
                        return false
                    }
                    return existingArchetype === null
                })
            }
            const archetype = existingArchetype
                || createArchetype(nextMaskString, nextMask, this)

            if (!existingArchetype) {
                // Could not find existing, try adding the new archetype to all queries
                for (let i = 0, ql = queries.length; i < ql; i++) {
                    const query = queries[i]!
                    query.tryAdd(archetype)
                }
            }

            // connect archetype in graph
            archetype.adjacent[componentId] = this // archetype has the componentId, so the only direction a transform can go with that componentId, is back here.
            adjacent[componentId] = archetype

            return archetype
        },
    }
}

export function traverseArchetypeGraph(archetype: InternalArchetype, callback: (archetype: InternalArchetype) => boolean | void, traversed = new Set<string>()): boolean {
    traversed.add(archetype.id)
    if (callback(archetype) === false) return false
    const adjacent = archetype.adjacent
    const l = adjacent.length
    for (let i = 0; i < l; i++) {
        const arch = adjacent[i]
        // adjacent is sparse, so there can be empty slots
        if (!arch) continue
        if (traversed.has(arch!.id)) continue
        if (traverseArchetypeGraph(arch, callback, traversed) === false) break
    }
    return true
}
