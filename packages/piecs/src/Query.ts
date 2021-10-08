import type { Archetype, InternalArchetype } from './Archetype'
import { createBitSet, BitSet, ReadonlyBitSet } from './collections/BitSet'

type QueryMatcher = (target: ReadonlyBitSet) => boolean
const alwaysTrue: QueryMatcher = (_: ReadonlyBitSet) => true
const alwaysFalse: QueryMatcher = (_: ReadonlyBitSet) => false

function makeMask(componentIds: Array<number>): BitSet {
    const max = Math.max(...componentIds)
    const mask = createBitSet(max)
    for (let i = 0; i < componentIds.length; i++) {
        mask.or(componentIds[i]!)
    }
    return mask
}

export function prefab(archetype: Archetype): QueryMatcher {
    return target => target.contains((<InternalArchetype>archetype).mask)
}

export function all(...componentIds: Array<number>): QueryMatcher {
    if (!componentIds.length) return alwaysFalse
    const mask = makeMask(componentIds)
    return target => target.contains(mask)
}

export function any(...componentIds: Array<number>): QueryMatcher {
    if (!componentIds.length) return alwaysTrue
    const mask = makeMask(componentIds)
    return target => target.intersects(mask)
}

export function not(...componentIds: Array<number>): QueryMatcher {
    if (!componentIds.length) return alwaysTrue
    const mask = makeMask(componentIds)
    return (target) => !target.intersects(mask)
}

export function and(matcher: QueryMatcher, ...matchers: QueryMatcher[]): QueryMatcher {
    return (target) => matcher(target)
        && matchers.every(m => m(target))
}

export function or(matcher: QueryMatcher, ...matchers: QueryMatcher[]): QueryMatcher {
    return (target) => matcher(target)
        || matchers.some(m => m(target))
}

export type Query = {
    readonly archetypes: ReadonlyArray<Archetype>
}

export type InternalQuery = {
    readonly tryAdd: (archetype: InternalArchetype) => boolean
} & Query

export const query = (...matchers: Array<QueryMatcher>): Query => {
    const archetypes: Archetype[] = []
    let matcher: QueryMatcher

    if (!matchers.length) {
        matcher = alwaysTrue
    } else {
        const [first, ...rest] = matchers
        matcher = rest.length
            ? and(first!, ...rest)
            : first!
    }

    function tryAdd(archetype: InternalArchetype): boolean {
        if (!matcher(archetype.mask)) return false
        archetypes.push(archetype)
        return true
    }

    return Object.freeze({
        archetypes,
        tryAdd
    }) as any
}
