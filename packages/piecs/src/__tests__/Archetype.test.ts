import { traverseArchetypeGraph, transformArchetype, createArchetype } from '../Archetype'
import { createBitSet } from '../collections/BitSet'

describe('Archetype', () => {
    const A = 1
    const B = 2
    const C = 3
    describe('transformArchetype', () => {
        it('locates existing archetype in graph', () => {
            const root = createArchetype('root', createBitSet(1))
            const a = transformArchetype(root, A) // 0 -> 1
            const b = transformArchetype(root, B) // 0 -> 1, 0 -> 2
            const ba = transformArchetype(b, A)   // 0 -> 1, 0 -> 2 -> 21
            const _a = transformArchetype(ba, B)  // 0 -> 1, 0 -> 2 -> 1
            expect(a.mask).toBe(_a.mask)
        })

        it('does not modify mask of input archetype', () => {
            const root = createArchetype('root', createBitSet(1))
            const a = transformArchetype(root, A)
            const b = transformArchetype(a, B)
            expect(root.mask.values()).toEqual([])
            expect(a.mask.has(B)).toBeFalsy()
            expect(b.mask.has(B)).toBeTruthy()
        })
    })
    describe('traverseArchetypeGraph', () => {
        it('traverses all archetypes in graph', () => {
            const root = createArchetype('root', createBitSet(1))
            const a = transformArchetype(root, A) // 0 -> 1
            const ab = transformArchetype(a, B)   // 0 -> 1 -> 12
            const abc = transformArchetype(ab, C) // 0 -> 1 -> 12 -> 123
            const ac = transformArchetype(abc, B) // 0 -> 1 -> 12 -> 123 -> 13
            transformArchetype(ac, C) // 0 -> 1 -> 12 -> 123 -> 13 -> 1 * full circle
    
            const traversed: string[] = []
            traverseArchetypeGraph(root, (archetype) => {
                traversed.push(archetype.id)
            })
            expect(traversed).toEqual([root.id, a.id, ab.id, abc.id, ac.id])
        })

        it('stops traversing when returning false', () => {
            const root = createArchetype('root', createBitSet(1))
            const a = transformArchetype(root, A) // 0 -> 1
            const ab = transformArchetype(a, B)   // 0 -> 1 -> 12
            const abc = transformArchetype(ab, C) // 0 -> 1 -> 12 -> 123
            const ac = transformArchetype(abc, B) // 0 -> 1 -> 12 -> 123 -> 13
            transformArchetype(ac, C) // 0 -> 1 -> 12 -> 123 -> 13 -> 1 * full circle
    
            const traversed: string[] = []
            traverseArchetypeGraph(root, (archetype) => {
                traversed.push(archetype.id)
                return archetype.id !== ab.id
            })
            expect(traversed).toEqual([root.id, a.id, ab.id])

        })
    })
})
