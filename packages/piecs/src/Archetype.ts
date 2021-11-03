import type { BitSet, ReadonlyBitSet } from './collections/BitSet'
import type { Component } from './types'
import { createSparseSet, SparseSet } from './collections/SparseSet'

export type Archetype = {
    /**
     * The id of the archetype is a hexadecimal representation of a set of unique bits for all of the `componentIds`
     */
    readonly id: string
    /**
     * All the entities currently in this archetype
     */
    readonly entities: ArrayLike<number>
    /**
     * Check if an entity is currently included in this archetype
     */
    hasEntity(entity: number): boolean
    /**
     * Check if this archetype has a `componentId`.
     * This is typically much faster than checking if `componentIds` includes a given componentId
     */
    hasComponent(component: Component): boolean
    /**
     * All the `componentIds` constituting this archetype
     */
    componentIds(): number[]
}

export type InternalArchetype = Archetype & {
    readonly mask: ReadonlyBitSet
    readonly entitySet: SparseSet
    readonly adjacent: InternalArchetype[]
}

export function createArchetype(id: string, mask: ReadonlyBitSet): InternalArchetype {
    const entitySet = createSparseSet()
    const adjacent: InternalArchetype[] = []

    return Object.freeze({
        id,
        mask,
        entitySet,
        adjacent,
        entities: entitySet.values,
        hasEntity: entitySet.has,
        hasComponent(component: Component) {
            return mask.has(typeof component === 'number' ? component : component.id)
        },
        componentIds() {
            return mask.values()
        },
    })
}

export function transformArchetype(archetype: InternalArchetype, componentId: number): InternalArchetype {
    if (archetype.adjacent[componentId] !== undefined) {
        return archetype.adjacent[componentId]!
    }

    // Mutate the current mask in order to avoid creating garbage (in case the archetype already exists)
    const mask = archetype.mask as BitSet
    mask.xor(componentId)
    const nextId = mask.toString()

    let existingArchetype: InternalArchetype | null = null
    traverseArchetypeGraph(archetype, (node) => {
        if (node === archetype) return
        if (node.id === nextId) {
            existingArchetype = node
            return false
        }
        return existingArchetype === null
    })

    const transformed = existingArchetype || createArchetype(nextId, mask.copy())
    // reset current mask of input archetype, see comment above
    mask.xor(componentId)
    transformed.adjacent[componentId] = archetype
    archetype.adjacent[componentId] = transformed
    return transformed
}

export function traverseArchetypeGraph(
    archetype: InternalArchetype,
    callback: (archetype: InternalArchetype) => boolean | void, traversed = new Set<InternalArchetype>()
): boolean {
    traversed.add(archetype)
    if (callback(archetype) === false) return false
    const adjacent = archetype.adjacent
    for (let i = 0, l = adjacent.length; i < l; i++) {
        const arch = adjacent[i]
        // adjacent is sparse, so there can be empty slots
        if (arch === undefined) continue
        // graph is doubly linked, so need to prevent infinite recursion
        if (traversed.has(arch)) continue
        if (traverseArchetypeGraph(arch, callback, traversed) === false) return false
    }
    return true
}
