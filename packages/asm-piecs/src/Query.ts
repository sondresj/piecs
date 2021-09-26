import { Archetype } from './Archetype'
import { BitMask } from './BitMask'
import { RelativeIndexable } from './RelativeIndexable'

export const ArrayU32_ID = idof<Array<u32>>()

const ALL: u8 = 1 << 0
const ANY: u8 = 1 << 1
const NOT: u8 = 1 << 2

export class QueryMask {
    constructor(
        private readonly type: u8,
        private readonly mask: BitMask
    ) {}

    @inline
    match(target: BitMask): bool {
        if (this.type == ALL) return target.contains(this.mask)
        if (this.type == ANY) return target.intersects(this.mask)
        if (this.type == NOT) return !target.intersects(this.mask)
        return false
    }
}

const AND: u8 = 1 << 3
const OR: u8 = 1 << 4

export class QueryMaskGroup {
    constructor(
        private readonly type: u8,
        private readonly subQueries: Array<QueryMask>
    ) {}

    match(target: BitMask): bool {
        const type = this.type
        const queries = this.subQueries
        const ql = queries.length
        for (let i: i32 = 0; i < ql; i++) {
            const query = unchecked(queries[i])
            const matches = query.match(target)
            if (matches && type == OR) return true
            if (!matches && type == AND) return false
        }
        return true
    }
}

function makeMask(componentIds: Array<u32>): BitMask {
    componentIds.sort()
    const last = unchecked(componentIds[componentIds.length - 1])
    const mask = new BitMask(last)
    for (let i = 0; i < componentIds.length; i++) {
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

export function and(subQueries: Array<QueryMask>): QueryMaskGroup {
    return new QueryMaskGroup(AND, subQueries)
}

export function or(subQueries: Array<QueryMask>): QueryMaskGroup {
    return new QueryMaskGroup(OR, subQueries)
}

export function query<T>(values: Array<T>): Query {
    if (isReference<T>()) {
        if (idof<T>() === idof<QueryMaskGroup>()) {
            // @ts-ignore
            return new Query(<Array<QueryMaskGroup>>values)
        }
        if (idof<T>() === idof<QueryMask>()) {
            // @ts-ignore
            return new Query([and(<Array<QueryMask>>values)])
        }
    }
    // @ts-ignore
    return new Query([and([all(<Array<u32>>values)])])
}


export class Query extends RelativeIndexable<Archetype> {
    [key: u32]: Archetype

    private _archetypes: Array<Archetype> = new Array()
    private _query: QueryMaskGroup

    constructor(query: QueryMaskGroup) {
        super()
        this._query = query
    }

    tryAdd(archetype: Archetype): bool {
        const query = this._query
        const target = archetype.mask
        if (!query.match(target)) return false
        this._archetypes.push(archetype)
        return true
    }

    @inline
    get length(): u32 {
        return this._archetypes.length
    }

    @inline
    @operator('[]')
    get(i: u32): Archetype {
        return this._archetypes[i]
    }

    @inline
    @operator('{}')
    __uget(i: u32): Archetype {
        return unchecked(this._archetypes[i])
    }
}
