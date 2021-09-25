import { BitmaskSet } from './collections/BitmaskSet'
import { SparseSet_Array } from './collections/SparseSet'
import { Query } from './Query'

export class Archetype {
    // sparse indexed by componentId. These are the parent archetypes of this archetype
    private _transformations: Archetype[] = []
    constructor(componentMask: BitmaskSet) {
        this.mask = componentMask
        this.id = componentMask.toString()
    }

    public readonly entities = new SparseSet_Array()
    public readonly mask: BitmaskSet
    public readonly id: string

    readonly _transform = (
        componentId: number,
        archetypes: Map<string, Archetype>,
        queries: Query[]
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
                query.tryAdd(archetype)
            }
        }

        this._transformations[componentId] = archetype
        return archetype
    }
}
