import type { Archetype } from './Archetype'
import { ComponentSet } from './ComponentSet'
import type { Query } from './types'

// export const query = (...subQueries: Query<ComponentSet<any>>[] | ComponentSet<any>[]): Query<ComponentSet<any>> => ({
//     type: 'and',
//     subQueries: subQueries.length
//         ? subQueries[0] instanceof ComponentSet
//             ? [and(...subQueries as ComponentSet<any>[])]
//             : subQueries as Query<ComponentSet<any>>[]
//         : []
// })
export const every = (...types: ComponentSet<any>[]): Query<ComponentSet<any>> => ({
    type: 'every',
    match: types
})
export const some = (...types: ComponentSet<any>[]): Query<ComponentSet<any>> => ({
    type: 'some',
    match: types
})
export const not = (...subQueries: Query<ComponentSet<any>>[] | ComponentSet<any>[]): Query<ComponentSet<any>> => ({
    type: 'not',
    subQueries: subQueries.length
        ? subQueries[0] instanceof ComponentSet
            ? [every(...subQueries as ComponentSet<any>[])]
            : subQueries as Query<ComponentSet<any>>[]
        : []
})
export const and = (...subQueries: Query<ComponentSet<any>>[]): Query<ComponentSet<any>> => ({
    type: 'and',
    subQueries
})
export const or = (...subQueries: Query<ComponentSet<any>>[]): Query<ComponentSet<any>> => ({
    type: 'or',
    subQueries
})

const transform = (query: Query<InstanceType<typeof ComponentSet>>): Query<number> => {
    switch (query.type) {
        case 'and':
        case 'or':
        case 'not':
            return {
                type: query.type,
                subQueries: query.subQueries.map(q => transform(q))
            }
        case 'every':
        case 'some':
            return {
                type: query.type,
                match: query.match.map(component => component.id)
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
            return query.match.every(archetype.mask.has)
        case 'some':
            return query.match.some(archetype.mask.has)
    }
}

export class CompiledQuery {
    // private matchingArchetypes: Map<string, Archetype> = new Map()
    public archetypes: Archetype[] = []
    private query: Query<number>

    constructor(query: Query<InstanceType<typeof ComponentSet>>) {
        this.query = transform(query)
    }

    matches = (archetype: Archetype): boolean => {
        const query = this.query
        switch (query.type) {
            case 'and':
                return query.subQueries.every(q => match(q, archetype))
            case 'or':
                return query.subQueries.some(q => match(q, archetype))
            case 'not':
                return !query.subQueries.every(q => match(q, archetype))
            case 'every':
                return query.match.every(archetype.mask.has)
            case 'some':
                return query.match.some(archetype.mask.has)
        }
    }

    // getMatchingEntities = (): Uint32Array => {
    //     const archetypes = this.archetypes
    //     let size = 0
    //     const subArrays = archetypes.map(archetype => {
    //         const arr = archetype.entities.subArray() as Uint32Array
    //         size += arr.length
    //         return arr
    //     })
    //     const arr = new Uint32Array(size)
    //     let offset = 0
    //     for (const subArray of subArrays) {
    //         arr.set(subArray, offset)
    //         offset += subArray.length
    //     }
    //     return arr
    // }
    // tryAddMatch = (archetype: Archetype): this => {
    //     if (this.archetypes.has(archetype.id))
    //         return this

    //     if (match(this.transformedQuery, archetype)) {
    //         this.archetypes.set(archetype.id, archetype)
    //     }
    //     return this
    // }

    // forEach = (callback: (entity: number) => void) => {
    //     this.archetypes.forEach(archetype => {
    //         const length = archetype.entities.length
    //         for (let i = length - 1; i >= 0; i--) {
    //             callback(archetype.entities.get(i)!)
    //         }
    //     })
    // }
}
