import { World } from '.'
import { SparseMap } from './collections/SparseMap'
import { ArrayType } from './collections/types'

export class ComponentSet<T> {
    private values: SparseMap<T>

    constructor(
        public readonly name: string,
        public readonly type: T extends number ? Exclude<ArrayType, 'any'> : Extract<ArrayType, 'any'>,
        public readonly id: number,
        private defaultValue: T,
        private world: World
    ) {
        this.values = new SparseMap<T>('uint32', type as any)
    }

    set = (entity: number, value: T = this.defaultValue, defer = false) => {
        this.world.setComponent(entity, this.id, defer)
        this.values.set(entity, value)
        return this
    }

    has = (entity: number) => {
        return this.world.hasEntity(entity) && this.values.has(entity)
    }

    get = (entity: number): T | undefined => {
        if (!this.world.hasEntity(entity)) return undefined
        return this.values.get(entity)
    }

    remove = (entity: number, defer = false) => {
        this.world.removeComponent(entity, this.id, defer)
        this.values.delete(entity)
        return this
    }
}
