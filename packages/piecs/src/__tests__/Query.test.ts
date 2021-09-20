import { some } from '..'
import { Archetype } from '../Archetype'
import { BitMask } from '../collections/Bitmask'
import { FlagComponentSet, StructComponentSet, VectorComponentSet } from '../ComponentSet'
import { CompiledQuery, every } from '../Query'


describe('CompiledQuery', () => {
    let nextComponentId = 0
    const foo = new VectorComponentSet('foo', 'uint8', nextComponentId++, 0, {
        setComponent: jest.fn(),
        removeComponent: jest.fn()
    } as any)// as Component<unknown>
    const bar = new FlagComponentSet('bar', 'flag', nextComponentId++, {
        setComponent: jest.fn(),
        removeComponent: jest.fn()
    } as any)// as Component<unknown>
    const baz = new StructComponentSet('baz', ['char(10)'] as const, nextComponentId++, ['hello'], {
        setComponent: jest.fn(),
        removeComponent: jest.fn()
    } as any)// as Component<unknown>

    describe('tryAddMatch and getMatchingEntities', () => {
        it('adds archetype matching some', () => {
            const cq = new CompiledQuery(some(foo, bar))
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(foo.id))
            archetype.entities.add(1)
            expect(cq.matches(archetype)).toBeTruthy() // should match
            cq.archetypes.push(archetype)
            const matrix = cq.archetypes.map(a => a.entities.values)
            matrix.forEach(entities => entities.forEach(entity => expect(entity).toEqual(1)))
            expect.assertions(2)
        })
        it('does not add archetype matching some', () => {
            const cq = new CompiledQuery(some(foo, bar))
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(baz.id))
            archetype.entities.add(1)
            expect(cq.matches(archetype)).toBeFalsy() // should not match
        })

        it('adds archetype matching every', () => {
            const cq = new CompiledQuery(every(foo, bar))
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(foo.id).xor(bar.id))
            archetype.entities.add(1)
            expect(cq.matches(archetype)).toBeTruthy() // should match
            cq.archetypes.push(archetype)
            const matrix = cq.archetypes.map(a => a.entities.values)
            matrix.forEach(entities => entities.forEach(entity => expect(entity).toEqual(1)))
            expect.assertions(2)
        })

        it('does not add archetype matching every', () => {
            const cq = new CompiledQuery(every(foo, bar))
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(foo.id))
            archetype.entities.add(1)
            expect(cq.matches(archetype)).toBeFalsy() // should not match
        })
    })
})
