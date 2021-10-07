import type { BitSet, ReadonlyBitSet } from './collections/BitSet'
import { InternalQuery, queryTryAdd } from './Query'
import { createSparseSet, SparseSet } from './collections/SparseSet'

// export type Archetype = {
//     readonly mask: BitSet
//     readonly entitySet: SparseSet
//     readonly adjacent: Archetype[]

//     transform (
//         componentId: number,
//         queries: Query[]
//     ): Archetype
// }

export const archetypeMask = Symbol.for('mask')
export const archetypeEntitySet = Symbol.for('entitySet')
export const archetypeAdjacent = Symbol.for('adjacent')
export const archetypeParent = Symbol.for('parent')
export const archetypeTransform = Symbol.for('transform')

export type InternalArchetype = {
    [archetypeMask]: ReadonlyBitSet
    [archetypeEntitySet]: SparseSet
    [archetypeAdjacent]: InternalArchetype[]
    [archetypeParent]: InternalArchetype | null
    [archetypeTransform]: (
        componentId: number,
        queries: InternalQuery[]
    ) => InternalArchetype
} & Archetype

export type Archetype = {
    readonly id: string
    // readonly componentIds: number[]
}

export function createArchetype(id: string, bitSet: BitSet, parent: InternalArchetype | null): InternalArchetype {
    const mask = bitSet
    const entitySet = createSparseSet()
    const adjacent: InternalArchetype[] = []

    return {
        id,
        [archetypeMask]: mask,
        [archetypeEntitySet]: entitySet,
        [archetypeAdjacent]: adjacent,
        [archetypeParent]: parent, 
        [archetypeTransform]: function(
            componentId: number,
            queries: InternalQuery[]
        ): InternalArchetype {
            if (adjacent[componentId]) {
                return adjacent[componentId]!
            }

            // Relying on the fact that most likely, there won't be more than one path to an archetype
            // If there is, there will be duplicate archetypes that contains a different set of entities that arrived at the archetype in different ways.
            // That's ok tho, i think?

            const nextMask = mask.copy().xor(componentId)
            const nextMaskString = nextMask.toString()
            let existingArchetype: InternalArchetype | null = null
            if (parent !== null) {
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
            // const archetype = createArchetype(nextMaskString, nextMask, this)
            for (let i = 0, ql = queries.length; i < ql; i++) {
                const query = queries[i]!
                query[queryTryAdd](archetype)
            }

            // connect archetype in graph
            archetype[archetypeAdjacent][componentId] = this // archetype has the componentId, so the only direction a transform can go with that componentId, is back here.
            adjacent[componentId] = archetype

            return archetype
        },
    }
}

export function traverseArchetypeGraph(archetype: InternalArchetype, callback: (archetype: InternalArchetype) => boolean | void, traversed = new Set<string>()): boolean {
    traversed.add(archetype.id)
    if (callback(archetype) === false) return false
    const adjacent = archetype[archetypeAdjacent]
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
