export default class SparseSet {
    private packed: number[]
    private indices: number[]

    constructor(values?: number[]){
        this.packed = values ? new Array(...values) : []
        this.indices = []
        if(values) {
            for(let i = 0; i < this.packed.length; i++) {
                this.indices[this.packed[i]!] = i
            }
        }
    }

    get size () {
        return this.packed.length
    }

    has = (value: number): boolean => {
        return this.packed[this.indices[value]!] === value
    }

    add = (value: number): this => {
        if (this.has(value)) return this
        this.indices[value] = this.packed.push(value) - 1
        return this
    }

    remove = (value: number): this => {
        if (!this.has(value)) return this
        const index = this.indices[value]!
        const swapped = this.packed.pop()!
        if(swapped !== value) {
            this.packed[index] = swapped
            this.indices[swapped] = index
        }
        return this
    }

    pop = (): number | undefined => {
        return this.packed.pop()
    }

    values = (): ReadonlyArray<number> => this.packed

    indexOfValue = (value: number) => {
        return this.indices[value]
    }
}
