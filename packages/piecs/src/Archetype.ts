import type { ReadonlyBitSet } from './collections/BitSet'
import { createSparseSet, SparseSet } from './collections/SparseSet'

export type Archetype = {
    /**
     * The id of the archetype is a hexadecimal representation of a set of unique bits for all of the `componentIds`
     */
    readonly id: string
    /**
     * All the `componentIds` constituting this archetype
     */
    readonly componentIds: ReadonlyArray<number>
    /**
     * All the entities currently in this archetype
     */
    readonly entities: ArrayLike<number>
    /**
     * Check if an entity is currently included in this archetype
     */
    hasEntity: (entity: number) => boolean
    /**
     * Check if this archetype has a `componentId`.
     * This is typically much faster than checking if `componentIds` includes a given componentId
     */
    hasComponentId: (componentId: number) => boolean
}

export type InternalArchetype = Archetype & {
    readonly mask: ReadonlyBitSet
    readonly entitySet: SparseSet
    readonly adjacent: InternalArchetype[]
    readonly parent: InternalArchetype | null
    readonly componentIds: number[]
}

export function createArchetype(id: string, mask: ReadonlyBitSet, parent: InternalArchetype | null): InternalArchetype {
    const entitySet = createSparseSet()
    const adjacent: InternalArchetype[] = []
    const componentIds: number[] = []

    function hasEntity(entity: number): boolean {
        return entitySet.has(entity)
    }

    function hasComponentId(componentId: number): boolean {
        return mask.has(componentId)
    }

    return Object.freeze({
        id,
        mask,
        entitySet,
        adjacent,
        parent,
        componentIds,
        hasEntity,
        hasComponentId,
        entities: entitySet.values
    })
}

export function transformArchetype(archetype: InternalArchetype, componentId: number): InternalArchetype {
    if (archetype.adjacent[componentId]) {
        return archetype.adjacent[componentId]!
    }
    const nextMask = archetype.mask.copy().xor(componentId)
    const nextId = nextMask.toString()

    // TODO: Not sure if it's worth it or needed to traverse the graph to find existing.
    let existingArchetype: InternalArchetype | null = null
    if (archetype.parent !== null) {
        // find existing archetype in graph
        traverseArchetypeGraph(archetype.parent, (node) => {
            if (node === archetype) return false
            if (node.id === nextId) {
                existingArchetype = node
                return false
            }
            return existingArchetype === null
        })
    }

    const transformed = existingArchetype || createArchetype(nextId, nextMask, archetype)
    transformed.adjacent[componentId] = archetype
    archetype.adjacent[componentId] = transformed
    if (!existingArchetype)
        transformed.componentIds.push(...archetype.componentIds, componentId)
    return transformed
}

export function traverseArchetypeGraph(archetype: InternalArchetype, callback: (archetype: InternalArchetype) => boolean | void, traversed = new Set<InternalArchetype>()): boolean {
    traversed.add(archetype)
    if (callback(archetype) === false) return false
    const adjacent = archetype.adjacent
    const l = adjacent.length
    for (let i = 0; i < l; i++) {
        const arch = adjacent[i]
        // adjacent is sparse, so there can be empty slots
        if (!arch) continue
        // graph is doubly linked, so need to prevent infinite recursion
        if (traversed.has(arch!)) continue
        if (traverseArchetypeGraph(arch, callback, traversed) === false) break
    }
    return true
}
