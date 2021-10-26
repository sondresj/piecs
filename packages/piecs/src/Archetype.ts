import type { ReadonlyBitSet } from './collections/BitSet'
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
    if (archetype.adjacent[componentId]) {
        return archetype.adjacent[componentId]!
    }
    // TODO: This new mask will be thrown away if an existing archetype is found..
    // Could cast the archetype.mask to a BitSet (not readonly) and xor componentId before toStringing,
    // then if no existing could be found, make a copy and afterwards xor componentId out again.
    const nextMask = archetype.mask.copy().xor(componentId)
    const nextId = nextMask.toString()

    // TODO: Not sure if it's worth it or needed to traverse the graph to find existing.
    let existingArchetype: InternalArchetype | null = null
    traverseArchetypeGraph(archetype, (node) => {
        if (node === archetype) return false
        if (node.id === nextId) {
            existingArchetype = node
            return false
        }
        return existingArchetype === null
    })

    const transformed = existingArchetype || createArchetype(nextId, nextMask)
    transformed.adjacent[componentId] = archetype
    archetype.adjacent[componentId] = transformed
    return transformed
}

export function traverseArchetypeGraph(archetype: InternalArchetype, callback: (archetype: InternalArchetype) => boolean | void, traversed = new Set<InternalArchetype>()): boolean {
    traversed.add(archetype)
    if (callback(archetype) === false) return false
    const adjacent = archetype.adjacent
    for (let i = 0, l = adjacent.length; i < l; i++) {
        const arch = adjacent[i]
        // adjacent is sparse, so there can be empty slots
        if (!arch) continue
        // graph is doubly linked, so need to prevent infinite recursion
        if (traversed.has(arch)) continue
        if (traverseArchetypeGraph(arch, callback, traversed) === false) break
    }
    return true
}
