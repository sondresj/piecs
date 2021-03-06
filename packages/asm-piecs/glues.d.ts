import { Archetype, QueryMask, QueryMaskGroup } from '.'

export declare function all(...componentIds: number[]): QueryMask
export declare function any(...componentIds: number[]): QueryMask
export declare function not(...componentIds: number[]): QueryMask
export declare function and(...subQueries: QueryMask[]): QueryMaskGroup
export declare function or(...subQueries: QueryMask[]): QueryMaskGroup
export declare function query(queryMask: QueryMaskGroup): {
    lenght: number
    get: (index: number) => number[]
    tryAdd: (archetype: Archetype) => boolean
    __ptr: number
}
