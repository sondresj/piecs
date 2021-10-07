import type { ReadonlyBitSet } from './collections/BitSet'
import { createSparseSet, SparseSet } from './collections/SparseSet'

export type InternalArchetype = {
    readonly id: string
    readonly mask: ReadonlyBitSet
    readonly entitySet: SparseSet
    readonly adjacent: InternalArchetype[]
    readonly parent: InternalArchetype | null
    readonly componentIds: number[]
}

export type Archetype = {
    readonly id: string
    readonly componentIds: ReadonlyArray<number>
}

export function createArchetype(id: string, mask: ReadonlyBitSet, parent: InternalArchetype | null): InternalArchetype {
    const entitySet = createSparseSet()
    const adjacent: InternalArchetype[] = []
    const componentIds: number[] = []

    return {
        id,
        mask,
        entitySet,
        adjacent,
        parent,
        componentIds
    }
}

export function transformArchetype(archetype: InternalArchetype, componentId: number): InternalArchetype {
    if (archetype.adjacent[componentId]) {
        return archetype.adjacent[componentId]!
    }

    // TODO: Not sure if it's worth it or needed to traverse the graph to find existing.
    // const nextMaskString = nextMask.toString()
    // let existingArchetype: InternalArchetype | null = null
    // if (parent !== null) {
    //     // find existing archetype in graph
    //     traverseArchetypeGraph(parent, (archetype) => {
    //         if (archetype === this) return false
    //         if (archetype.id === nextMaskString) {
    //             existingArchetype = archetype
    //             return false
    //         }
    //         return existingArchetype === null
    //     })
    // }

    const nextMask = archetype.mask.copy().xor(componentId)
    const transformed = createArchetype(nextMask.toString(), nextMask, archetype)
    transformed.adjacent[componentId] = archetype
    archetype.adjacent[componentId] = transformed
    transformed.componentIds.push(componentId)
    return transformed
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
        // graph is doubly linked, so need to prevent infinite recursion
        if (traversed.has(arch!.id)) continue
        if (traverseArchetypeGraph(arch, callback, traversed) === false) break
    }
    return true
}
