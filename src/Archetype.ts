import type { CompiledQuery } from './Query'
import { BitMask, ReadonlyBitMask } from './collections/Bitmask'
import { SparseSet_Array } from './collections/SparseSet'

export class Archetype {
    // sparse indexed by componentId. These are the parent archetypes of this archetype
    private _transformations: Archetype[] = []
    // private entities = new SparseSet('uint32')
    constructor(componentMask: BitMask) {
        this.mask = componentMask
        this.id = componentMask.toString()
    }

    public readonly entities = new SparseSet_Array()//('uint32')
    public readonly mask: ReadonlyBitMask
    public readonly id: string

    readonly _transform = (
        componentId: number,
        archetypes: Map<string, Archetype>,
        queries: CompiledQuery[]
    ): Archetype => {
        if (this._transformations[componentId]) {
            return this._transformations[componentId]!
        }
        const nextMask = this.mask.copy().xor(componentId)
        let archetype = archetypes.get(nextMask.toString())

        if (!archetype) {
            archetype = new Archetype(nextMask)
            archetype._transformations[componentId] = this // for potential backwards transform
            // Doesn't really belong here, but it does increase performance
            archetypes.set(archetype.id, archetype)
            for (const query of queries) {
                if (query.matches(archetype)) {
                    query.archetypes.push(archetype)
                }
            }
        }

        this._transformations[componentId] = archetype
        return archetype
    }
}
