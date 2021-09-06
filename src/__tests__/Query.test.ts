import { some } from '..'
import Archetype from '../Archetype'
import BitMask from '../Bitmask'
import CompiledQuery from '../Query'

const testTypes = {
    foo: 0,
    bar: '',
    baz: false
}

type TestType = typeof testTypes



describe('CompiledQuery', () => {
    const componentIds: Map<keyof TestType, number> = new Map(Object.keys(testTypes).map((key, i) => [key, i])) as any
    test('tryAddMatch', () => {

        const cq = new CompiledQuery<TestType>(some('foo', 'bar'), componentIds)
        const mask = new BitMask(3)
        const archetype = new Archetype(mask.xor(componentIds.get('foo')!))
        archetype.addEntity(1)
        // archetype.hasComponent(componentIds.get('foo')!)
        console.log(componentIds, mask.toString(), mask.has(0))
        cq.tryAddMatch(archetype) // should match

        expect([...cq.getMatchingEntities()]).toEqual([1])
    })
})