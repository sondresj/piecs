import { StructVector } from '../../collections/StructVector'

describe('StructVector', () => {
    it('pushes simple struct', () => {
        const v = new StructVector(['uint8', 'int16'] as const, { initialCapacity: 10 })
        expect(v.length).toBe(0)

        expect(v.push([1, 2])).toBe(v.length)
    })

    it('grows', () => {
        const v = new StructVector(['uint8', 'int16'] as [x: 'uint8', y: 'int16'], { initialCapacity: 1 })
        v.push([1, 2]) // should grow here

        expect(v.push([2, 3])).toBe(2)
    })

    it('handles complex struct', () => {
        const v = new StructVector(['char(11)', 'int8', 'char(11)', 'float32'] as const, { initialCapacity: 10 })
        expect(v.push(['hello', -1, 'world', 1234.5678])).toBe(1) // new length
        const entry = v.get(0)!
        expect(entry.slice(0, 3)).toEqual(['hello', -1, 'world'])
        expect(entry[3]!).toBeCloseTo(1234.5678)
    })

    it('handles bigints', () => {
        const v = new StructVector(['uint64', 'float64'] as const, { initialCapacity: 2 })
        expect(v.push([90071992547409915n, 2])).toBe(1)
        expect(v.get(0)!.toString()).toEqual('90071992547409915,2') // Jest doesnt handle bigints very well..
    })

    it('pops', () => {
        const v = new StructVector(['int16', 'int16'] as const, { initialCapacity: 2 })
        expect(v.push([1, 2])).toBe(1)
        expect(v.pop()).toEqual([1, 2])
        expect(v.length).toBe(0)
    })
})
