import { Archetype } from '../Archetype'
import { BitmaskSet } from '../collections/BitmaskSet'
import { FlagComponentSet, StructComponentSet, VectorComponentSet } from '../ComponentSet'
import { query, all, any, not, and } from '../Query'


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

    describe('tryAdd', () => {
        it('adds archetype that has any', () => {
            const q = query(any(foo.id, bar.id))
            const mask = new BitmaskSet(3)
            const archetype = new Archetype(mask.xor(foo.id))
            expect(q.tryAdd(archetype)).toBeTruthy()
        })
        it('does not add archetype that lacks any', () => {
            const q = query(any(foo.id, bar.id)) // = 3 = (0011)
            const mask = new BitmaskSet(3)
            const archetype = new Archetype(mask.xor(baz.id)) // = 4 (0100)
            expect(q.tryAdd(archetype)).toBeFalsy() // 4 isSuperSetOf 3
        })

        it('adds archetype that has all', () => {
            const q = query(all(foo.id, bar.id))
            const mask = new BitmaskSet(3)
            const archetype = new Archetype(mask.xor(foo.id).xor(bar.id))
            expect(q.tryAdd(archetype)).toBeTruthy()
        })

        it('does not add archetype that lacks all', () => {
            const q = query(all(foo.id, bar.id))
            const mask = new BitmaskSet(3)
            const archetype = new Archetype(mask.xor(foo.id))
            expect(q.tryAdd(archetype)).toBeFalsy()
        })

        it('does not add archetype that matches not query', () => {
            const q = query(not(foo.id))
            const mask = new BitmaskSet(3)
            const archetype = new Archetype(mask.xor(foo.id))
            expect(q.tryAdd(archetype)).toBeFalsy()
        })

        it('does not add archetype with component not included in query', () => {
            const q = query(and(all(foo.id), not(baz.id))) // 0101
            const mask = new BitmaskSet(3)
            const archetype = new Archetype(mask.xor(bar.id)) // 0010
            expect(q.tryAdd(archetype)).toBeFalsy()
        })
    })
})
