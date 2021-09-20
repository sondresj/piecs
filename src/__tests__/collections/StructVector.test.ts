import { StructVector } from '../../collections/StructVector'

describe('StructVector', () => {
    it('pushes simple struct', () => {
        const v = new StructVector(['uint8', 'int16'] as const, 10)
        expect(v.length).toBe(0)

        expect(v.push([1, 2])).toBe(v.length)
    })

    it('grows', () => {
        const v = new StructVector(['uint8', 'int16'] as const, 1)
        v.push([1, 2]) // should grow here

        expect(v.push([2, 3])).toBe(2)
    })

    it('handles complex struct', () => {
        const v = new StructVector(['char(11)', 'int8', 'char(11)', 'float32'] as const, 10)
        expect(v.push(['hello', -1, 'world', 1234.5678])).toBe(1) // new length
        const entry = v.get(0)!
        expect(entry.slice(0, 3)).toEqual(['hello', -1, 'world'])
        expect(entry[3]!).toBeCloseTo(1234.5678)
    })
})
