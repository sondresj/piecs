import BitMask from './Bitmask'
import SparseSet from './SparseSet'

export default class Archetype {
    private entities = new SparseSet()
    constructor(private componentMask: BitMask) {
        this.id = componentMask.toString()
    }

    public readonly id: string

    getEntities = () => {
        return this.entities.values()
    }

    copyMask = () => {
        return this.componentMask.copy()
    }

    addEntity = (entity: number) => {
        this.entities.add(entity)
        return this
    }

    removeEntity = (entity: number) => {
        this.entities.remove(entity)
        return this
    }

    hasEntity = (entity: number) => {
        return this.entities.has(entity)
    }

    hasComponent = (componentId: number) => {
        return this.componentMask.has(componentId)
    }
}
