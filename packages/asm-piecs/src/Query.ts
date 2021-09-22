import { Archetype } from './Archetype'
import { BitMask } from './BitMask'

abstract class QueryMask {
    constructor(public readonly mask: BitMask){}
    abstract test(other: BitMask): bool;
}
@final
class Every extends QueryMask {
    @inline
    test(other: BitMask): bool {
        return other.isSuperSetOf(this.mask)
    }
}
// const Every_ID = idof<Every>()

@final
class Some extends QueryMask {
    @inline
    test(other: BitMask): bool {
        return other.isSubSetOf(this.mask)
    }
}
// const Some_ID = idof<Some>()

@final
class Not extends QueryMask {
    @inline
    test(other: BitMask): bool {
        return !other.isSuperSetOf(this.mask)
    }
}
// const Not_ID = idof<Not>()

export function every(componentIds: Array<native<u32>>): QueryMask {
    const mask: BitMask = new BitMask(1) // should grow
    for(let i = 0; i < componentIds.length; i++) {
        mask.or(componentIds[i])
    }
    return new Every(mask)
}
export function some(componentIds: Array<native<u32>>): QueryMask {
    const mask: BitMask = new BitMask(1) // should grow
    for(let i = 0; i < componentIds.length; i++) {
        mask.or(componentIds[i])
    }
    return new Some(mask)
}
export function not(componentIds: Array<native<u32>>): QueryMask {
    const mask: BitMask = new BitMask(1) // should grow
    for(let i = 0; i < componentIds.length; i++) {
        mask.or(componentIds[i])
    }
    return new Not(mask)
}

export function or(queryMasks: Array<QueryMask>): QueryMask {
    assert(queryMasks.length, 'Query: Empty block not allowed')
    let mask: BitMask = unchecked(queryMasks[0].mask)
    for(let i = 1; i < queryMasks.length; i++) {
        const queryMask: QueryMask = unchecked(queryMasks[i])
        let qmask: BitMask = queryMask.mask
        if(queryMask instanceof Not) { // not sure if this actually work, might be true as long as queryMask is an instance extending QueryMask
            qmask = qmask.not() // not sure if this works either, because suddenly this has all the components BUT those it matches against.. hmm
        }
        mask = mask.intersection(qmask)
    }
    return new Some(mask)
}

export function and(queryMasks: Array<QueryMask>): QueryMask {
    assert(queryMasks.length, 'Query: Empty block not allowed')
    let mask: BitMask = unchecked(queryMasks[0].mask)
    for(let i = 1; i < queryMasks.length; i++) {
        const queryMask: QueryMask = unchecked(queryMasks[i])
        let qmask: BitMask = queryMask.mask
        if(queryMask instanceof Not) { // not sure if this actually work, might be true as long as queryMask is an instance extending QueryMask
            qmask = qmask.not() // not sure if this works either, because suddenly this has all the components BUT those it matches against.. hmm
        }
        mask = mask.union(qmask)
    }
    return new Every(mask)
}

@final class Query {
    [key: i32]: Archetype

    private _archetypes: Array<Archetype> = new Array()
    constructor(private _queryMasks: Array<QueryMask>){}

    tryAddMatch(archetype: Archetype): void {
        const queries = this._queryMasks
        for(let i = queries.length; i >= 0; i--) {
            const query = unchecked(queries[i])
            if(!query.test(archetype.mask)) return
        }
        this._archetypes.push(archetype)
    }

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
export { Query }

export function createQuery(masks: Array<QueryMask>): Query {
    return new Query(masks)
}
