import { Archetype } from './Archetype'
import { BitMask } from './BitMask'

export const ArrayU32_ID = idof<Array<u32>>()

const ALL: u8 = 1
const ANY: u8 = 2
const NOT: u8 = 4

export class QueryMask {
    constructor(
        public readonly type: u8,
        public readonly mask: BitMask
    ) {}
}

function makeMask(componentIds: Array<u32>): BitMask {
    componentIds.sort()
    const last = unchecked(componentIds[componentIds.length - 1])
    const mask = new BitMask(last)
    for(let i = 0; i < componentIds.length; i++) {
        mask.or(componentIds[i])
    }
    return mask
}

export function all(componentIds: Array<u32>): QueryMask {
    const mask = makeMask(componentIds)
    return new QueryMask(ALL, mask)
}
export function any(componentIds: Array<u32>): QueryMask {
    const mask = makeMask(componentIds)
    return new QueryMask(ANY, mask)
}
export function not(componentIds: Array<u32>): QueryMask {
    const mask = makeMask(componentIds)
    return new QueryMask(NOT, mask)
}

export function or(queryMasks: Array<QueryMask>): QueryMask {
    assert(queryMasks.length, 'Query: Empty array of queries is not allowed')
    let mask: BitMask = unchecked(queryMasks[0].mask)
    for(let i = 1; i < queryMasks.length; i++) {
        const queryMask: QueryMask = unchecked(queryMasks[i])
        let qmask: BitMask = queryMask.mask
        mask = mask.intersection(qmask) // not sure about this either..
    }
    return new QueryMask(ANY, mask)
}

export function and(queryMasks: Array<QueryMask>): QueryMask {
    assert(queryMasks.length, 'Query: Empty array of queries is not allowed')
    let mask: BitMask = unchecked(queryMasks[0].mask)
    for(let i = 1; i < queryMasks.length; i++) {
        const queryMask: QueryMask = unchecked(queryMasks[i])
        let qmask: BitMask = queryMask.mask
        mask = mask.union(qmask) // not sure about this either..
    }
    return new QueryMask(ALL, mask)
}

export class Query {
    [key: i32]: Archetype

    private _archetypes: Array<Archetype> = new Array()
    constructor(
        private _queryMasks: Array<QueryMask>
    ){}

    tryAdd(archetype: Archetype): void {
        const queries = this._queryMasks
        const targetMask = archetype.mask
        for(let i: i32 = 0; i < queries.length; i++) {
            const query = unchecked(queries[i])
            // assert(query.type & (ALL | ANY | NOT))
            if(query.type == ALL && !query.mask.contains(targetMask)) return
            if(query.type == ANY && !targetMask.contains(query.mask)) return
            if(query.type == NOT && targetMask.contains(query.mask)) return
        }
        this._archetypes.push(archetype)
    }

    @inline
    get length(): i32 {
        return this._archetypes.length
    }

    @inline
    @operator('[]')
    __get(i: i32): Archetype {
        return this._archetypes[i]
    }

    @inline
    @operator('{}')
    __uget(i: i32): Archetype {
        return unchecked(this._archetypes[i])
    }
}

// export function createQuery(masks: Array<QueryMask>): Query {
//     return new Query(masks)
// }
