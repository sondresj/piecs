import BitMask from './collections/Bitmask'
import SparseSet from './collections/SparseSet'

export default class Archetype {
    private entities = new SparseSet('uint32')
    constructor(private componentMask: BitMask) {
        this.id = componentMask.toString()
    }

    public readonly id: string

    get entityCount() {
        return this.entities.length
    }

    copyMask = () => {
        return this.componentMask.copy()
    }

    addEntity = (entity: number) => {
        this.entities.add(entity)
        return this
    }

    removeEntity = (entity: number) => {
        this.entities.delete(entity)
        return this
    }

    hasEntity = (entity: number) => {
        return this.entities.has(entity)
    }

    hasComponent = (componentId: number) => {
        return this.componentMask.has(componentId)
    }

    [Symbol.iterator](): IterableIterator<number> {
        return this.entities[Symbol.iterator]()
    }
}
