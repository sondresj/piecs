import type { Archetype, InternalArchetype } from './Archetype'
import type { Component } from './types'
import { createBitSet, BitSet, ReadonlyBitSet } from './collections/BitSet'

type QueryMatcher = (target: ReadonlyBitSet, archetype: Archetype) => boolean

function makeMask<T extends Component>(componentIds: T[]): BitSet {
    const ids = componentIds.map(c => typeof c === 'number' ? c : c.id)
    const max = Math.max(...ids)
    const mask = createBitSet(Math.ceil(max / 32))
    for (let i = 0; i < ids.length; i++) {
        mask.or(ids[i]!)
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
     * All archetypes matching the query
     */
    readonly archetypes: ReadonlyArray<Archetype>
}

export type InternalQuery = Query & {
    readonly tryAdd: (archetype: InternalArchetype) => boolean
    readonly archetypes: ReadonlyArray<InternalArchetype>
}

const alwaysTrue: QueryMatcher = (_: ReadonlyBitSet, __: Archetype) => true

export type QueryBuilder = {
    /**
     * Archetypes that has *every* componentId of `componentIds` will be included in the result
     */
    every<T extends Component>(...cids: T[]): QueryBuilder
    /**
     * Archetypes that has *some* of the `componentIds` will be included in the result
     */
    some<T extends Component>(...cids: T[]): QueryBuilder
    /**
     * Archetypes that has *some* of the `componentIds` will *not* be included in the result
     */
    not<T extends Component>(...cids: T[]): QueryBuilder
    /**
     * Archetypes that has *every* componentId of `componentIds` will *not* be included in the result
     */
    none<T extends Component>(...cids: T[]): QueryBuilder
    /**
     * Build a subquery to match a different set of Archetypes.
     * You may combine as many or subqueries and nested or subqueries as you need
     */
    or(callback: (builder: QueryBuilder) => QueryBuilder): QueryBuilder
    /**
     * Add a custom query matcher.
     * The matcher function receives a `BitSet` that indicates the presence of `componentIds`, and the `Archetype` associated with the `BitSet`
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

function createBuilder(): QueryBuilder {
    let _matchers: QueryMatcher[] = []
    return {
        get matchers() {
            return _matchers
        },
        or(cb) {
            const [first = alwaysTrue, ...rest] = _matchers
            _matchers = [
                makeOrMatcher(
                    makeAndMatcher(first, ...rest),
                    ...cb(createBuilder()).matchers
                )
            ]
            return this
        },
        every(...components) {
            if (components.length === 0) {
                return this
            }
            const mask = makeMask(components)
            _matchers.push((target, _targetArchetype) => target.contains(mask))
            return this
        },
        some(...components) {
            if (components.length === 0) {
                return this
            }
            const mask = makeMask(components)
            _matchers.push((target, _targetArchetype) => target.intersects(mask))
            return this
        },
        not(...components) {
            if (components.length === 0) {
                return this
            }
            const mask = makeMask(components)
            _matchers.push((target, _targetArchetype) => !target.intersects(mask))
            return this
        },
        none(...components) {
            if (components.length === 0) {
                return this
            }
            const mask = makeMask(components)
            _matchers.push((target, _targetArchetype) => !target.contains(mask))
            return this
        },
        prefabricated(archetype) {
            _matchers.push((target, _targetArchetype) => target.contains((archetype as InternalArchetype).mask))
            return this
        },
        custom(matcher) {
            _matchers.push(matcher)
            return this
        },
        toQuery() {
            const [first = alwaysTrue, ...rest] = _matchers
            const matcher = rest.length
                ? makeAndMatcher(first, ...rest)
                : first

            const archetypes: Archetype[] = []
            return Object.freeze({
                archetypes,
                tryAdd(archetype: InternalArchetype): boolean {
                    if (!matcher(archetype.mask, archetype)) return false
                    archetypes.push(archetype)
                    return true
                }
            })
        }
    }
}

export function query(callback: (builder: QueryBuilder) => QueryBuilder): Query {
    return callback(createBuilder()).toQuery()
}
