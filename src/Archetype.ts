import { BitMask } from './collections/Bitmask'
import { SparseSet } from './collections/SparseSet'

export class Archetype {
    // sparse indexed by componentId
    private morphs: Archetype[] = []
    private entities = new SparseSet('uint32')
    constructor(private componentMask: BitMask) {
        this.id = componentMask.toString()
    }

    // wolf ecs caches changes in an array of archetypes, this is to reduce the amount of times the mask is copied, TODO do this

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

    morph = (componentId: number, archetypes: ReadonlyMap<string, Archetype>): Archetype => {
        if (this.morphs[componentId]) return this

        const nextMask = this.copyMask().xor(componentId)
        const archetype = archetypes.get(nextMask.toString()) || new Archetype(nextMask)
        this.morphs[componentId] = archetype
        return archetype
    }

    [Symbol.iterator](): IterableIterator<number> {
        return this.entities[Symbol.iterator]()
    }
}
