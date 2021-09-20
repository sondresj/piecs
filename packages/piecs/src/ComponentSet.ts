import { Struct, StructVector, StructValueType } from './collections/StructVector'
import { Vector, VectorValueType } from './collections/Vector'
import { InternalWorld } from './types'

// type NumberType = Exclude<VectorValueType, 'any'>

// export type ComponentType = VectorValueType
// export type ComponentType<T> = T extends number ? NumberType
//     : T extends string ? 'string'
//         : T extends boolean ? 'boolean'
//             : T extends bigint ? 'bigint'
//                 : T extends (...args: any) => any ? 'function'
//                     : T extends new (...args: any) => any ? 'class'
//                         : T extends any[] ? 'array' // TODO: Could be a TypedArray Buffer, would need a vector for buffer for optimal performance
//                             : T extends Record<string, any> ? 'object'
//                                  : 'any'

const arrayTypes: VectorValueType[] = ['any', 'float32', 'float64', 'int16', 'int32', 'int8', 'pointer', 'uint16', 'uint32', 'uint8', 'uint8c']
const mapType = (type: string): VectorValueType => arrayTypes.includes(type as any)
    ? type as VectorValueType
    : 'any'

export interface ComponentSet<T> {
    readonly id: number
    readonly name: string
    readonly add: (entity: number, value?: T) => this
    readonly set: (entity: number, value?: T) => this
    readonly get: (entity: number) => T | undefined
    readonly has: (entity: number) => boolean
    readonly remove: (entity: number) => this
}

// type ComponentSetInstanceType = InstanceType<
// | typeof VectorComponentSet
// | typeof FlagComponentSet
// | typeof StructComponentSet
// >

export class FlagComponentSet implements ComponentSet<boolean> {
    constructor(
        public readonly name: string,
        public readonly type: 'flag',
        public readonly id: number,
        private world: InternalWorld
    ) {}

    add = (entity: number): this => {
        this.world.setComponent(entity, this.id)
        return this
    }

    // not really needed..
    set = (entity: number): this => {
        this.world.setComponent(entity, this.id)
        return this
    }

    get = (entity: number): boolean => {
        return this.has(entity)
    }

    has = (entity: number): boolean => {
        return this.world.hasEntity(entity) && this.world.hasComponent(entity, this.id)
    }

    remove = (entity: number): this => {
        this.world.removeComponent(entity, this.id)
        return this
    }
}

export class StructComponentSet<T extends readonly StructValueType[]> implements ComponentSet<Struct<T>> {
    private values: StructVector<T>

    constructor(
        public readonly name: string,
        public readonly type: T,
        public readonly id: number,
        private defaultValue: Struct<T>,
        private world: InternalWorld
    ) {
        this.values = new StructVector<T>(type, { sparse: true })
    }

    add = (entity: number, value: Struct<T> = this.defaultValue): this => {
        this.world.setComponent(entity, this.id)
        this.values.set(entity, value)

        return this
    }
    set = (entity: number, value: Struct<T> = this.defaultValue): this => {
        this.values.set(entity, value)
        return this
    }

    get = (entity: number): Struct<T> | undefined => {
        return this.get(entity)
    }

    has = (entity: number): boolean => {
        return this.world.hasEntity(entity) && this.world.hasComponent(entity, this.id)
    }

    remove = (entity: number): this => {
        this.world.removeComponent(entity, this.id)
        return this
    }
}

export class VectorComponentSet<T> {
    private values: Vector<T>

    constructor(
        public readonly name: string,
        public readonly type: VectorValueType,
        public readonly id: number,
        private defaultValue: T,
        private world: InternalWorld
    ) {
        this.values = new Vector<T>(
            mapType(type) as any,
            { sparse: true, }
        )
    }

    /**
     * For adding component to and entity that may or may not already have that component.
     * @see `set` if you want to update the value of a component the entity already has
     * @param entity
     * @param value
     * @returns*
     */
    add = (entity: number, value: T = this.defaultValue) => {
        this.world.setComponent(entity, this.id)
        this.values.set(entity, value)
        return this
    }

    /**
     * For when you want to update the value of a component the entity already has
     * @param entity
     * @param value
     * @returns
     */
    set = (entity: number, value: T) => {
        this.values.set(entity, value)
        return this
    }

    has = (entity: number) => {
        return this.world.hasEntity(entity) && this.world.hasComponent(entity, this.id)
    }

    get = (entity: number): T | undefined => {
        // TODO: this check could be done only in development to reduce performance hit of these checks in production
        // if (!this.world.hasEntity(entity) || !this.world.hasComponent(entity, this.id))
        //     return undefined
        return this.values.get(entity)
    }

    remove = (entity: number) => {
        this.world.removeComponent(entity, this.id)
        return this
    }
}
