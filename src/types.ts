import type { ArrayType } from './collections/types'
import { ComponentSet } from './ComponentSet'

type GroupQuery<Tkeys> = {
    type: 'and' | 'or' | 'not'
    subQueries: Query<Tkeys>[]
}

type LeafQuery<Tkeys> = {
    type: 'every' | 'some'
    match: Tkeys[]
}

export type Query<Tkeys> = LeafQuery<Tkeys> | GroupQuery<Tkeys>

type NumberType = Exclude<ArrayType, 'any'>

export type Typeof<T> = T extends number ? NumberType
    : T extends string ? 'string'
        : T extends boolean ? 'boolean'
            : T extends bigint ? 'bigint'
                : T extends (...args: any) => any ? 'function'
                    : T extends new (...args: any) => any ? 'class'
                        : T extends any[] ? 'array' // TODO: Could be a TypedArray Buffer, would need a vector for buffer for optimal performance
                            : T extends Record<string, any> ? 'object'
                                : 'any'

export type EntityIterator = (callback: (entity: number) => void) => void
export interface System<TC extends InstanceType<typeof ComponentSet>> {
    name: string
    init?: (world: BoundWorld) => void
    execute: (entityIterator: EntityIterator, world: BoundWorld, dt: number) => void
    query: Query<TC>
}

export interface BoundWorld {
    readonly hasEntity: (entity: number) => boolean
    readonly createEntity: () => number
    readonly deleteEntity: (entity: number) => this
}
