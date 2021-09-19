import { StructVector } from '../../collections/StructVector'
describe('StructVector', () => {
    it('pushes simple struct', () => {
        const v = new StructVector([{ type: 'uint8' }, { type: 'int16' }] as const, 10)
        expect(v.length).toBe(0)
        v.push([1, 2])
        expect(v.length).toBe(1)
    })

    it('grows', () => {
        const v = new StructVector([{ type: 'uint8' }, { type: 'int16' }] as const, 1)
        v.push([1, 2]) // should grow here
        v.push([2, 3])
        expect(v.length).toBe(2)
    })

    it('handles complex struct', () => {
        const v = new StructVector([
            { type: 'char', length: 11 },
            { type: 'int8' },
            { type: 'char', length: 11 },
            { type: 'float32' }
        ] as const, 10)
        // console.log(v)
        expect(v.push(['hello world', -1, 'foo bar baz', 1234.5678])).toBe(1) // new length
        const entry = v.get(0)
        expect(entry).toEqual(['hello world', -1, 'foo bar baz', expect.any(Number)])
    })
})
