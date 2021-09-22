import { BitMask } from './BitMask'
import { Query } from './Query'
import { SparseSet } from './SparseSet'
import { Vector } from './Vector'

export class Archetype {
    [key: u32]: u32

    private _transformations: Array<Archetype> = new Array()
    private _entities: SparseSet = new SparseSet(1<<10)

    constructor(componentMask: BitMask) {
        this.mask = componentMask
        this.id = componentMask.toString()
    }
    public mask: BitMask
    readonly id: string

    @inline
    get length(): u32 {
        return this._entities.length
    }

    @operator('[]')
    __get(index: u32): u32 {
        return this._entities[index]
    }

    @operator('{}')
    __uget(index: u32): u32 {
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
    get entities(): Vector {
        return this._entities.values
    }

    transform(
        componentId: u32,
        archetypes: Map<string, Archetype>,
        queries: Array<Query>
    ): Archetype {
        // TODO: Array in asm can't be holey (have undefined entries)...
        // consider using map instead of allocating a giant array
        if(this._transformations[componentId]) {
            return unchecked(this._transformations[componentId])
        }
        const nextMask = this.mask.copy().xor(componentId)
        let archetype = archetypes.get(nextMask.toString())

        if (!archetype) {
            archetype = new Archetype(nextMask)
            archetype._transformations[componentId] = this // for potential backwards transform
            // Doesn't really belong here, but it does increase performance
            archetypes.set(archetype.id, archetype)
            // todo
            for (let i = 0; i < queries.length; i++) {
                const q = unchecked(queries[i])
                q.tryAddMatch(archetype)
            }
        }

        this._transformations[componentId] = archetype
        return archetype
    }
}
