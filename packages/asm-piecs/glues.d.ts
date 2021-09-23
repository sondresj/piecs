import { Query, QueryMask } from '.'

export declare function all(...componentIds: number[]): QueryMask
export declare function any(...componentIds: number[]): QueryMask
export declare function not(...componentIds: number[]): QueryMask
export declare function and(...subQueries: QueryMask[]): QueryMask
export declare function or(...subQueries: QueryMask[]): QueryMask
export declare function query(queryMask: QueryMask): Query