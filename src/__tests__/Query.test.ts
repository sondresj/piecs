import { some } from '..'
import Archetype from '../Archetype'
import BitMask from '../collections/Bitmask'
import CompiledQuery, { every } from '../Query'


describe('CompiledQuery', () => {
    const testTypes = {
        foo: 0,
        bar: '',
        baz: false
    }

    type TestType = typeof testTypes
    const componentIds: Map<keyof TestType, number> = new Map(Object.keys(testTypes).map((key, i) => [key, i])) as any

    describe('tryAddMatch and getMatchingEntities', () => {
        it('adds archetype matching some', () => {
            const cq = new CompiledQuery<TestType>(some('foo', 'bar'), componentIds)
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(componentIds.get('foo')!))
            archetype.addEntity(1)
            cq.tryAddMatch(archetype) // should match

            expect([...cq.getMatchingEntities()]).toEqual([1])
        })
        it('does not add archetype matching some', () => {
            const cq = new CompiledQuery<TestType>(some('foo', 'bar'), componentIds)
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(componentIds.get('baz')!))
            archetype.addEntity(1)
            cq.tryAddMatch(archetype) // should not match

            expect([...cq.getMatchingEntities()]).toEqual([])
        })

        it('adds archetype matching every', () => {
            const cq = new CompiledQuery<TestType>(every('foo', 'bar'), componentIds)
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(componentIds.get('foo')!).xor(componentIds.get('bar')!))
            archetype.addEntity(1)
            cq.tryAddMatch(archetype) // should match

            expect([...cq.getMatchingEntities()]).toEqual([1])
        })

        it('does not add archetype matching every', () => {
            const cq = new CompiledQuery<TestType>(every('foo', 'bar'), componentIds)
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(componentIds.get('foo')!))
            archetype.addEntity(1)
            cq.tryAddMatch(archetype) // should not  match

            expect([...cq.getMatchingEntities()]).toEqual([])
        })
    })
})
