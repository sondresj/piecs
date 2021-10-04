import type { Archetype } from './Archetype'
import { BitSet } from './collections/BitSet'

type QueryMatcher = (target: BitSet) => boolean
const alwaysTrue: QueryMatcher = (_: BitSet) => true
const alwaysFalse: QueryMatcher = (_: BitSet) => false

function makeMask(componentIds: Array<number>): BitSet {
    componentIds.sort()
    const last = componentIds[componentIds.length - 1]!
    const mask = new BitSet(last)
    for (let i = 0; i < componentIds.length; i++) {
        mask.or(componentIds[i]!)
    }
    return mask
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
    readonly archetypes: Archetype[]
    readonly tryAdd: (archetype: Archetype) => boolean
}

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

    function tryAdd(archetype: Archetype): boolean {
        if (!matcher(archetype.mask)) return false
        archetypes.push(archetype)
        return true
    }

    return {
        archetypes,
        tryAdd
    }
}
