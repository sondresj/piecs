import { some } from '..'
import { Archetype } from '../Archetype'
import { BitMask } from '../collections/Bitmask'
import { ComponentSet } from '../ComponentSet'
import { CompiledQuery, every } from '../Query'


describe('CompiledQuery', () => {
    let nextComponentId = 0
    const foo = new ComponentSet('foo', 'uint8', nextComponentId++, 0, {
        setComponent: jest.fn(),
        removeComponent: jest.fn()
    } as any)// as Component<unknown>
    const bar = new ComponentSet('bar', 'any', nextComponentId++, false, {
        setComponent: jest.fn(),
        removeComponent: jest.fn()
    } as any)// as Component<unknown>
    const baz = new ComponentSet('baz', 'any', nextComponentId++, '', {
        setComponent: jest.fn(),
        removeComponent: jest.fn()
    } as any)// as Component<unknown>

    describe('tryAddMatch and getMatchingEntities', () => {
        it('adds archetype matching some', () => {
            const cq = new CompiledQuery(some(foo, bar))
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(foo.id))
            archetype.addEntity(1)
            cq.tryAddMatch(archetype) // should match

            cq.forEach(entity => expect(entity).toBe(1))
            expect.assertions(1)
        })
        it('does not add archetype matching some', () => {
            const cq = new CompiledQuery(some(foo, bar))
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(baz.id))
            archetype.addEntity(1)
            cq.tryAddMatch(archetype) // should not match

            cq.forEach(() => fail('did not expect to be called'))
            expect.assertions(0)
        })

        it('adds archetype matching every', () => {
            const cq = new CompiledQuery(every(foo, bar))
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(foo.id).xor(bar.id))
            archetype.addEntity(1)
            cq.tryAddMatch(archetype) // should match

            cq.forEach(entity => expect(entity).toBe(1))
            expect.assertions(1)
        })

        it('does not add archetype matching every', () => {
            const cq = new CompiledQuery(every(foo, bar))
            const mask = new BitMask(3)
            const archetype = new Archetype(mask.xor(foo.id))
            archetype.addEntity(1)
            cq.tryAddMatch(archetype) // should not  match

            cq.forEach(() => fail('did not expect to be called'))
            expect.assertions(0)
        })
    })
})
