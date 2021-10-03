// export class SparseSet {
//     readonly values: number[] = []
//     private _indices: number[] = []

//     has = (value: number): boolean => {
//         const index = this._indices[value]!
//         return index < this.values.length
//             && this.values[index] === value
//     }

//     add = (value: number) => {
//         const index = this._indices[value]!
//         if (index < this.values.length && this.values[index] === value) {
//             return
//         }
//         this._indices[value] = this.values.push(value) - 1
//     }

//     delete = (value: number) => {
//         const index = this._indices[value]!
//         if (index >= this.values.length || this.values[index] !== value) {
//             return
//         }

//         const swap = this.values.pop()!
//         if (swap !== value) {
//             const index = this._indices[value]!
//             this.values[index] = swap
//             this._indices[swap] = index
//         }
//     }
// }

export type SparseSet = {
    readonly values: ReadonlyArray<number>
    has: (value: number) => boolean
    add: (value: number) => void
    remove: (value: number) => void
}

export const createSparseSet = (): SparseSet => {
    const values: number[] = []
    const indices: number[] = []

    function has(value: number): boolean {
        return indices[value]! < values.length
            && values[indices[value]!] === value
    }

    function add(value: number) {
        const l = values.length
        if (indices[value]! >= l || values[indices[value]!] !== value) {
            indices[value] = l
            values.push(value)
        }
    }

    function SSremove(value: number) {
        if (indices[value]! >= values.length || values[indices[value]!] !== value) {
            return
        }

        const swap = values.pop()!
        if (swap !== value) {
            values[indices[value]!] = swap
            indices[swap] = indices[value]!
        }
    }

    return {
        values,
        has,
        add,
        remove: SSremove
    }
}
