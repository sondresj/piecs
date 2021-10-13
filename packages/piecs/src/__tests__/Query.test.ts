import { createArchetype } from '../Archetype'
import { createBitSet } from '../collections/BitSet'
import { buildQuery, InternalQuery } from '../Query'


describe('CompiledQuery', () => {
    let nextComponentId = 0
    const foo = nextComponentId++
    const bar = nextComponentId++
    const baz = nextComponentId++

    describe('tryAdd', () => {
        it('adds archetype that has any', () => {
            const q = buildQuery(q => q.some(foo, bar)) as InternalQuery
            const mask = createBitSet(3)
            const archetype = createArchetype('foo', mask.xor(foo), null)
            expect(q.tryAdd(archetype)).toBeTruthy()
        })
        it('does not add archetype that lacks any', () => {
            const q = buildQuery(q => q.some(foo, bar)) as InternalQuery
            const mask = createBitSet(3)
            const archetype = createArchetype('foo', mask.xor(baz), null) // = 4 (0100, null)
            expect(q.tryAdd(archetype)).toBeFalsy() // 4 isSuperSetOf 3
        })

        it('adds archetype that has all', () => {
            const q = buildQuery(q => q.every(foo, bar)) as InternalQuery
            const mask = createBitSet(3)
            const archetype = createArchetype('foo', mask.xor(foo).xor(bar), null)
            expect(q.tryAdd(archetype)).toBeTruthy()
        })

        it('does not add archetype that lacks all', () => {
            const q = buildQuery(q => q.every(foo, bar)) as InternalQuery
            const mask = createBitSet(3)
            const archetype = createArchetype('foo', mask.xor(foo), null)
            expect(q.tryAdd(archetype)).toBeFalsy()
        })

        it('does not add archetype that matches not query', () => {
            const q = buildQuery(q => q.not(foo)) as InternalQuery
            const mask = createBitSet(3)
            const archetype = createArchetype('foo', mask.xor(foo), null)
            expect(q.tryAdd(archetype)).toBeFalsy()
        })

        it('does not add archetype with component not included in query', () => {
            const q = buildQuery(q => q.every(foo).not(baz)) as InternalQuery
            const mask = createBitSet(3)
            const archetype = createArchetype('foo', mask.xor(bar), null) // 0010
            expect(q.tryAdd(archetype)).toBeFalsy()
        })
    })
})
