import type Archetype from './Archetype'
import type { ComponentTypeMap, ComponentIdMap, Query } from './types'

export const every = <TM extends ComponentTypeMap, CT extends keyof TM>(...types: CT[]): Query<CT> => ({
    type: 'every',
    match: types
})
export const some = <TM extends ComponentTypeMap, CT extends keyof TM>(...types: CT[]): Query<CT> => ({
    type: 'some',
    match: types
})
export const not = <TM extends ComponentTypeMap, CT extends keyof TM>(...subQueries: Query<CT>[]): Query<CT> => ({
    type: 'not',
    subQueries
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
    switch(query.type) {
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
    switch(query.type) {
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

export default class CompiledQuery<TM extends ComponentTypeMap> {
    private matchingArchetypes: Map<string, Archetype> = new Map()
    private transformedQuery: Query<number>

    constructor(
        query: Query<keyof TM>,
        cIdMap: ComponentIdMap<TM>
    ) {
        this.transformedQuery = transform(query, cIdMap)
    }


    tryAddMatch = (archetype: Archetype): this => {
        if(match(this.transformedQuery, archetype)) {
            this.matchingArchetypes.set(archetype.id, archetype)
        }
        return this
    }

    getMatchingEntities = (): IterableIterator<number> => {
        const entitySet: Set<number> = new Set()
        for (const archetype of this.matchingArchetypes.values()) {
            const entities = archetype.getEntities()
            // apparently its a good idea to go backwards here. possibly because of updates to the archetype? or performance?
            for(let i = entities.length - 1; i >= 0; i--) {
                entitySet.add(entities[i]!)
            }
        }
        return entitySet.values()
    }
}
