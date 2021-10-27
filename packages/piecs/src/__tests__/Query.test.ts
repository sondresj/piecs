import { createArchetype } from '../Archetype'
import { createBitSet } from '../collections/BitSet'
import { query, InternalQuery } from '../Query'


describe('CompiledQuery', () => {
    let nextComponentId = 0
    const foo = nextComponentId++
    const bar = nextComponentId++
    const baz = nextComponentId++

    describe('tryAdd', () => {
        it('adds archetype that has any', () => {
            const q = query(q => q.some(foo, bar)) as InternalQuery
            const mask = createBitSet(1)
            const archetype = createArchetype('foo', mask.xor(foo))
            expect(q.tryAdd(archetype)).toBeTruthy()
        })
        it('does not add archetype that lacks any', () => {
            const q = query(q => q.some(foo, bar)) as InternalQuery
            const mask = createBitSet(1)
            const archetype = createArchetype('foo', mask.xor(baz)) // = 4 (0100, null)
            expect(q.tryAdd(archetype)).toBeFalsy() // 4 isSuperSetOf 3
        })

        it('adds archetype that has all', () => {
            const q = query(q => q.every(foo, bar)) as InternalQuery
            const mask = createBitSet(1)
            const archetype = createArchetype('foo', mask.xor(foo).xor(bar))
            expect(q.tryAdd(archetype)).toBeTruthy()
        })

        it('does not add archetype that lacks all', () => {
            const q = query(q => q.every(foo, bar)) as InternalQuery
            const mask = createBitSet(1)
            const archetype = createArchetype('foo', mask.xor(foo))
            expect(q.tryAdd(archetype)).toBeFalsy()
        })

        it('does not add archetype that matches not query', () => {
            const q = query(q => q.not(foo)) as InternalQuery
            const mask = createBitSet(1)
            const archetype = createArchetype('foo', mask.xor(foo))
            expect(q.tryAdd(archetype)).toBeFalsy()
        })

        it('does not add archetype with component not included in query', () => {
            const q = query(q => q.every(foo).not(baz)) as InternalQuery
            const mask = createBitSet(1)
            const archetype = createArchetype('foo', mask.xor(bar)) // 0010
            expect(q.tryAdd(archetype)).toBeFalsy()
        })

        it('does not add archetype with components matching none query', () => {
            const q = query(q => q.none(foo, bar)) as InternalQuery
            const mask = createBitSet(1)
            const archetype = createArchetype('foo', mask.xor(foo).xor(bar))
            expect(q.tryAdd(archetype)).toBeFalsy()
        })

        it('adds archetype with some components matching none query, but not all', () => {
            const q = query(q => q.none(foo, bar)) as InternalQuery
            const mask = createBitSet(1)
            const archetype = createArchetype('foo', mask.xor(bar))
            expect(q.tryAdd(archetype)).toBeTruthy()
        })
    })
})
