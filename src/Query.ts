import type { Archetype } from './Archetype'
import type { ComponentTypeMap, ComponentIdMap, Query } from './types'

export const every = <TM extends ComponentTypeMap, CT extends keyof TM>(...types: CT[]): Query<CT> => ({
    type: 'every',
    match: types
})
export const some = <TM extends ComponentTypeMap, CT extends keyof TM>(...types: CT[]): Query<CT> => ({
    type: 'some',
    match: types
})
export const not = <TM extends ComponentTypeMap, CT extends keyof TM>(...subQueries: Query<CT>[] | CT[]): Query<CT> => ({
    type: 'not',
    subQueries: subQueries.length
        ? typeof subQueries[0] === 'string'
            ? [every<TM, CT>(...subQueries as CT[])]
            : subQueries as Query<CT>[]
        : []
})
export const and = <TM extends ComponentTypeMap, CT extends keyof TM>(...subQueries: Query<CT>[]): Query<CT> => ({
    type: 'and',
    subQueries
})
export const or = <TM extends ComponentTypeMap, CT extends keyof TM>(...subQueries: Query<CT>[]): Query<CT> => ({
    type: 'or',
    subQueries
})

const transform = <
    TM extends ComponentTypeMap
>(query: Query<keyof TM>, cIdMap: ComponentIdMap<TM>): Query<number> => {
    switch (query.type) {
        case 'and':
        case 'or':
        case 'not':
            return {
                type: query.type,
                subQueries: query.subQueries.map(q => transform(q, cIdMap))
            }
        case 'every':
        case 'some':
            return {
                type: query.type,
                match: query.match.map(ctype => cIdMap.get(ctype)!)
            }
        default: throw new Error(`Invalid query type ${(query as any).type}. Valid query types: and, or, not, every, some`)
    }
}

const match = (query: Query<number>, archetype: Archetype): boolean => {
    switch (query.type) {
        case 'and':
            return query.subQueries.every(q => match(q, archetype))
        case 'or':
            return query.subQueries.some(q => match(q, archetype))
        case 'not':
            return !query.subQueries.every(q => match(q, archetype))
        case 'every':
            return query.match.every(archetype.hasComponent)
        case 'some':
            return query.match.some(archetype.hasComponent)
    }
}

export class CompiledQuery<TM extends ComponentTypeMap> {
    private matchingArchetypes: Map<string, Archetype> = new Map()
    private transformedQuery: Query<number>

    constructor(
        query: Query<keyof TM>,
        cIdMap: ComponentIdMap<TM>
    ) {
        this.transformedQuery = transform(query, cIdMap)
    }


    tryAddMatch = (archetype: Archetype): this => {
        if (this.matchingArchetypes.has(archetype.id))
            return this

        if (match(this.transformedQuery, archetype)) {
            this.matchingArchetypes.set(archetype.id, archetype)
        }
        return this
    }

    *[Symbol.iterator](): IterableIterator<number> {
        // TODO: Try to provide alternatives for generator functions (to reduce overhead of yield)
        for (const archetype of this.matchingArchetypes.values()) {
            yield *archetype
        }
    }
}
