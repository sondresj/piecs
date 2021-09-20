import { Vector, VectorValueType } from './Vector'

export class SparseSet {
    private dense: Vector<number>
    private indices = new Vector<number>('pointer', { sparse: true })

    constructor(type: Exclude<VectorValueType, 'any'>) {
        this.dense = new Vector<number>(type)
    }

    get length() {
        return this.dense.length
    }

    has = (value: number): boolean => {
        const index = this.indices.get(value)
        return index !== undefined
            && index < this.dense.length
            && this.dense.get(index) === value
    }

    add = (value: number): this => {
        const index = this.indices.get(value)
        if (index !== undefined
            && index < this.dense.length
            && this.dense.get(index) === value
        ) {
            return this
        }
        this.indices.set(value, this.dense.push(value) - 1)

        return this
    }

    get = (index: number): number | undefined => {
        return this.dense.get(index)
    }

    pop = (): number | undefined => {
        return this.dense.pop()
    }

    delete = (value: number): this => {
        const index = this.indices.get(value)
        if (index === undefined
            || index >= this.dense.length
            || this.dense.get(index) !== value
        ) {
            return this
        }

        const swap = this.dense.pop()!
        if (swap !== value) {
            this.dense.set(index, swap)
            this.indices.set(swap, index)
        }

        return this
    }

    subArray = () => {
        return this.dense.subArray()
    }

    // forEach = (callback: (value: number, index: number) => void) => {
    //     this.dense.forEach(callback)
    // }
}
export class SparseSet_Array {
    readonly values: number[] = []
    private indices: number[] = []

    /**
     * Setting length to 0 effectively clears the array.
     * In contrast to standard arrays however, this does not release the contents of the array for garbage collecting
     */
    // length = 0

    has = (value: number): boolean => {
        const index = this.indices[value]!
        return index < this.values.length
            && this.values[index] === value
    }

    add = (value: number) => {
        const index = this.indices[value]!
        if (index < this.values.length && this.values[index] === value) {
            return
        }
        this.indices[value] = this.values.push(value) - 1
        return this
    }

    delete = (value: number) => {
        const index = this.indices[value]!
        if (index >= this.values.length || this.values[index] !== value) {
            return
        }

        const swap = this.values.pop()!
        if (swap !== value) {
            const index = this.indices[value]!
            this.values[index] = swap
            this.indices[swap] = index
        }
    }
}
