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

    const has = (value: number): boolean => {
        const index = indices[value]!
        return index < values.length
            && values[index] === value
    }

    const add = (value: number) => {
        const index = indices[value]
        const l = values.length
        if (index === undefined || index >= l || values[index] !== value) {
            indices[value] = l
            values.push(value)
        }
    }

    const remove = (value: number) => {
        const index = indices[value]
        if (index === undefined || index >= values.length || values[index] !== value) {
            return
        }

        const swap = values.pop()!
        if (swap !== value) {
            const index = indices[value]!
            values[index] = swap
            indices[swap] = index
        }
    }

    return {
        values,
        has,
        add,
        remove
    }
}
