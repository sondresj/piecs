import { ArrayType } from './types'
import { Vector } from './Vector'

export class SparseSet {
    private dense: Vector<number>
    private indices = new Vector<number>({ sparse: true, type: 'pointer' })

    constructor(type: Exclude<ArrayType, 'any'>) {
        this.dense = new Vector<number>({ type })
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
    private dense: number[] = []
    private indices: number[] = []

    /**
     * Setting length to 0 effectively clears the array.
     * In contrast to standard arrays however, this does not release the contents of the array for garbage collecting
     */
    length = 0

    has = (value: number): boolean => {
        const index = this.indices[value]!
        return index < this.length
            && this.dense[index] === value
    }

    add = (value: number) => {
        const index = this.indices[value]!
        if (index < this.length && this.dense[index] === value) {
            return
        }
        this.indices[value] = this.length
        this.dense[this.length++] = value
        return this
    }

    pop = (): number | undefined => {
        if (this.length === 0) {
            return undefined
        }
        return this.dense[--this.length]
    }

    delete = (value: number) => {
        const index = this.indices[value]!
        if (index >= this.length || this.dense[index] !== value) {
            return
        }

        const swap = this.dense[--this.length]!
        if (swap !== value) {
            const index = this.indices[value]!
            this.dense[index] = swap
            this.indices[swap] = index
        }
    }

    toArray = () => {
        return this.dense.slice(0, this.length)
    }
}
