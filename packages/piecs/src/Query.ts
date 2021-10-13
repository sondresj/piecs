import type { Archetype, InternalArchetype } from './Archetype'
import { createBitSet, BitSet, ReadonlyBitSet } from './collections/BitSet'

type QueryMatcher = (target: ReadonlyBitSet, archetype: Archetype) => boolean

function makeMask(componentIds: Array<number>): BitSet {
    const max = Math.max(...componentIds)
    const mask = createBitSet(max)
    for (let i = 0; i < componentIds.length; i++) {
        mask.or(componentIds[i]!)
    }
    return mask
}

function makeAndMatcher(matcher: QueryMatcher, ...matchers: QueryMatcher[]): QueryMatcher {
    return (target, targetArchetype) => matcher(target, targetArchetype)
        && matchers.every(m => m(target, targetArchetype))
}

function makeOrMatcher(matcher: QueryMatcher, ...matchers: QueryMatcher[]): QueryMatcher {
    return (target, targetArchetype) => matcher(target, targetArchetype)
        || matchers.some(m => m(target, targetArchetype))
}

export type Query = {
    /**
     * All archetypes that matches the query
     */
    readonly archetypes: ReadonlyArray<Archetype>
}

export type InternalQuery = Query & {
    readonly tryAdd: (archetype: InternalArchetype) => boolean
    readonly archetypes: ReadonlyArray<InternalArchetype>
}

const alwaysTrue: QueryMatcher = (_: ReadonlyBitSet, __: Archetype) => true

function createQuery(...matchers: Array<QueryMatcher>): Query {
    const archetypes: Archetype[] = []

    const [first = alwaysTrue, ...rest] = matchers
    const matcher = rest.length
        ? makeAndMatcher(first, ...rest)
        : first

    function tryAdd(archetype: InternalArchetype): boolean {
        if (!matcher(archetype.mask, archetype)) return false
        archetypes.push(archetype)
        return true
    }

    return Object.freeze({
        archetypes,
        tryAdd
    })
}

export type QueryBuilder = {
    /**
     * Archetypes that has *every* componentId of `componentIds` will be included in the result
     */
    every(...cids: number[]): QueryBuilder
    /**
     * Archetypes that has *some* of the `componentIds` will be included in the result
     */
    some(...cids: number[]): QueryBuilder
    /**
     * Archetypes that has *some* of the `componentIds` will *not* be included in the result
     */
    not(...cids: number[]): QueryBuilder
    /**
     * Archetypes that has *every* componentId of `componentIds` will *not* be included in the result
     */
    none(...cids: number[]): QueryBuilder
    /**
     *
     */
    or(orBuilder: (q: QueryBuilder) => QueryBuilder): QueryBuilder
    /**
     * Add a custom query matcher.
     * The matcher function receives a `BitSet` that indicates the presence of `componentIds`, and the `Archetype` associated with the BitSet`.
     */
    custom(matcher: QueryMatcher): QueryBuilder
    /**
     * Query for a prefabricated `archetype`.
     * May match descendant archetypes, ie archetypes with all of the component ids in the prefab *and* additional component ids added to entities in the prefabricated archetype or descendant archetypes
     */
    prefabricated(archetype: Archetype): QueryBuilder
    toQuery(): Query
    readonly matchers: ReadonlyArray<QueryMatcher>
}

const createBuilder = (): QueryBuilder => {
    let _matchers: QueryMatcher[] = []
    return {
        get matchers() {
            return _matchers
        },
        or(q) {
            const [first = alwaysTrue, ...rest] = _matchers
            _matchers = [
                makeOrMatcher(
                    makeAndMatcher(first, ...rest),
                    ...q(createBuilder()).matchers
                )
            ]
            return this
        },
        every(...componentIds) {
            if (!componentIds.length) {
                return this
            }
            const mask = makeMask(componentIds)
            _matchers.push((target, _targetArchetype) => target.contains(mask))
            return this
        },
        some(...componentIds) {
            if (!componentIds.length) {
                return this
            }
            const mask = makeMask(componentIds)
            _matchers.push((target, _targetArchetype) => target.intersects(mask))
            return this
        },
        not(...componentIds) {
            if (!componentIds.length) {
                return this
            }
            const mask = makeMask(componentIds)
            _matchers.push((target, _targetArchetype) => !target.intersects(mask))
            return this
        },
        none(...componentIds) {
            if (!componentIds.length) {
                return this
            }
            const mask = makeMask(componentIds)
            _matchers.push((target, _targetArchetype) => !target.contains(mask))
            return this
        },
        prefabricated(archetype) {
            _matchers.push((target, _targetArchetype) => target.contains((<InternalArchetype>archetype).mask))
            return this
        },
        custom(matcher) {
            _matchers.push(matcher)
            return this
        },
        toQuery() {
            return createQuery(..._matchers)
        }
    }
}

export const buildQuery = (callback: (builder: QueryBuilder) => QueryBuilder): Query => {
    return callback(createBuilder()).toQuery()
}
