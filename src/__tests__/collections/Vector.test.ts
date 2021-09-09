import Vector from '../../collections/Vector'

describe('Vector', () => {
    describe('not sparse', () => {
        it('pushes and returns new length', () => {
            const vector = new Vector<number>({
                growFactor: 2,
                initialCapacity: 2,
                type: 'int8'
            })
            const l = vector.push(1)
            expect(l).toBe(vector.length)
        })

        it('grows', () => {
            const vector = new Vector<number>({
                growFactor: 2,
                initialCapacity: 2,
                type: 'int8'
            })
            for (let i = 0; i < 10; i++)
                vector.push(i)
            expect(vector.length).toBe(10)
            expect(vector.capacity).toBe(16)
        })

        it('pops', () => {
            const vector = new Vector<number>({
                growFactor: 2,
                initialCapacity: 2,
                type: 'int8'
            })
            vector.push(1)
            expect(vector.pop()).toBe(1)
            expect(vector.length).toBe(0)
        })

        it('iterates', () => {
            const vector = new Vector<number>({
                growFactor: 2,
                initialCapacity: 10,
                type: 'int8'
            })
            for (let i = 0; i < 10; i++)
                vector.push(i)

            let v = 0
            for (const value of vector) {
                expect(value).toBe(v++)
            }
            expect.assertions(10)
        })
    })

    describe('sparse', () => {
        it('sets and gets', () => {
            const vector = new Vector<number>({
                growFactor: 2,
                initialCapacity: 2,
                type: 'int8',
                sparse: true
            })
            expect(vector.set(0, 1).get(0)).toBe(1)
        })

        it('grows', () => {
            const vector = new Vector<number>({
                growFactor: 2,
                initialCapacity: 2,
                type: 'int8',
                sparse: true
            })
            vector.set(9, 0)
            expect(vector.length).toBe(10)
            expect(vector.capacity).toBe(16)
        })

        it('iterates', () => {
            const vector = new Vector<number>({
                growFactor: 2,
                initialCapacity: 10,
                type: 'int8',
                sparse: true
            })
            vector.set(4, 1)

            let sum = 0
            let i = 0
            for (const value of vector) {
                sum += value
                i++
            }
            expect(i).toBe(vector.capacity)
            expect(sum).toBe(1)
        })
    })
})
