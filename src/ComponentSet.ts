import { ArrayType } from './collections/types'
import { Vector } from './collections/Vector'
import { InternalWorld } from './types'

type NumberType = Exclude<ArrayType, 'any'>

export type ComponentType<T> = T extends number ? NumberType
    : T extends string ? 'string'
        : T extends boolean ? 'boolean'
            : T extends bigint ? 'bigint'
                : T extends (...args: any) => any ? 'function'
                    : T extends new (...args: any) => any ? 'class'
                        : T extends any[] ? 'array' // TODO: Could be a TypedArray Buffer, would need a vector for buffer for optimal performance
                            : T extends Record<string, any> ? 'object'
                                : 'any'

const arrayTypes: ArrayType[] = ['any', 'float32', 'float64', 'int16', 'int32', 'int8', 'pointer', 'uint16', 'uint32', 'uint8', 'uint8c']
const mapType = (type: string): ArrayType => arrayTypes.includes(type as any)
    ? type as ArrayType
    : 'any'

export class ComponentSet<T> {
    private values: Vector<T>

    constructor(
        public readonly name: string,
        public readonly type: ComponentType<T>,
        public readonly id: number,
        private defaultValue: T,
        private world: InternalWorld
    ) {
        this.values = new Vector<T>({
            sparse: true,
            type: mapType(type) as any
        })
    }

    set = (entity: number, value: T = this.defaultValue, defer = false) => {
        if (!this.world.hasComponent(entity, this.id))
            this.world.setComponent(entity, this.id, defer)
        this.values.set(entity, value)
        return this
    }

    has = (entity: number) => {
        return this.world.hasEntity(entity) && this.world.hasComponent(entity, this.id)
    }

    get = (entity: number): T | undefined => {
        if (!this.world.hasEntity(entity) || !this.world.hasComponent(entity, this.id))
            return undefined
        return this.values.get(entity)
    }

    remove = (entity: number, defer = false) => {
        this.world.removeComponent(entity, this.id, defer)
        return this
    }
}
