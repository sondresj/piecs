import { SparseSet } from '../../collections/SparseSet'

describe('SparseSet', () => {
    it('has 0', () => {
        const set = new SparseSet('uint8')
        set.add(0)
        expect(set.has(0)).toBeTruthy()
    })

    it('has not 0', () => {
        const set = new SparseSet('pointer')
        expect(set.has(0)).toBeFalsy()
    })

    it('has no longer 0', () => {
        const set = new SparseSet('pointer')
        set.add(0)
        set.delete(0)
        expect(set.has(0)).toBeFalsy()
    })
})
