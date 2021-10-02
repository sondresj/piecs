import { BitMask } from './BitMask'
import { Query } from './Query'
import { SparseSet } from './SparseSet'

export class Archetype {
    [key: i32]: u32

    private _transformations: Array<Archetype | null> = new Array<Archetype | null>()
    // private _transformations: Map<u32, Archetype> = new Map()
    private _entities: SparseSet = new SparseSet(1<<10)

    constructor(componentMask: BitMask) {
        this.mask = componentMask
        this.id = componentMask.toString()
    }
    public mask: BitMask
    readonly id: string

    @inline
    get length(): i32 {
        return this._entities.length
    }

    @inline
    @operator('[]')
    get(index: i32): u32 {
        return this._entities[index]
    }

    @inline
    @operator('{}')
    __uget(index: i32): u32 {
        return unchecked(this._entities[index])
    }

    @inline
    hasComponent(componentId: u32): bool {
        return this.mask.has(componentId)
    }

    @inline
    hasEntity(entity: u32): bool {
        return this._entities.has(entity)
    }

    @inline
    addEntity(entity: u32): void {
        this._entities.add(entity)
    }

    @inline
    removeEntity(entity: u32): void {
        this._entities.delete(entity)
    }

    @inline
    get entities(): Array<u32> {
        return this._entities.values
    }

    transform(
        componentId: u32,
        archetypes: Map<string, Archetype>,
        queries: Array<Query>
    ): Archetype {
        let archetype: Archetype | null = <u32> this._transformations.length > componentId
            ? this._transformations[componentId]
            : null
        if (archetype != null) {
            return archetype
        }
        const nextMask = this.mask.copy().xor(componentId)
        const nextMaskId = nextMask.toString()

        if (archetypes.has(nextMaskId)) {
            archetype = archetypes.get(nextMaskId)
        } else {
            archetype = new Archetype(nextMask)
            archetype._transformations[componentId] = this // for potential backwards transform
            // Doesn't really belong here, but it does increase performance
            archetypes.set(archetype.id, archetype)
            for (let i = 0; i < queries.length; i++) {
                const q = unchecked(queries[i])
                q.tryAdd(archetype)
            }
        }

        this._transformations[componentId] = archetype
        return archetype
    }
}
