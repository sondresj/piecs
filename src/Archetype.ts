import { BitMask } from './collections/Bitmask'
import { SparseSet } from './collections/SparseSet'
import { ReadonlyTypedArray } from './collections/types'

export class Archetype implements ReadonlyTypedArray<number> {
    // sparse indexed by componentId. These are the parent archetypes of this archetype
    protected transformations: Archetype[] = []
    private entities = new SparseSet('uint32')
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

    [Symbol.iterator](): IterableIterator<number> {
        return this.entities[Symbol.iterator]()
    }
}
