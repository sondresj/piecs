import { BitMask } from './collections/Bitmask'
import { SparseSet_Array } from './collections/SparseSet'

export class Archetype {
    // sparse indexed by componentId. These are the parent archetypes of this archetype
    protected transformations: Archetype[] = []
    private entities = new SparseSet_Array()
    // private entities = new SparseSet('uint32')
    constructor(private componentMask: BitMask) {
        this.id = componentMask.toString()
    }

    public readonly id: string

    get length() {
        return this.entities.length
    }

    get = (index: number): number | undefined => {
        return this.entities.get(index)
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

    transform = (componentId: number, archetypes: Readonly<Record<string, Archetype>>): Archetype => {
        if (this.transformations[componentId]) {
            return this.transformations[componentId]!
        }
        const nextMask = this.componentMask.copy().xor(componentId)
        let archetype = archetypes[nextMask.toString()]
        if (!archetype) {
            archetype = new Archetype(nextMask)
            archetype.transformations[componentId] = this // for potential backwards transform
        }
        this.transformations[componentId] = archetype
        return archetype
    }

    forEach = (callback: (entity: number) => void) => {
        const length = this.entities.length
        for (let i = length - 1; i >= 0; i--) {
            callback(this.entities.get(i)!)
        }
    }
}
