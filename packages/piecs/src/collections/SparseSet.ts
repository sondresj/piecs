
export type SparseSet = {
    readonly values: ArrayLike<number>
    has: (value: number) => boolean
    add: (value: number) => void
    remove: (value: number) => void
}

export const createSparseSet = (): SparseSet => {
    const values: number[] = []
    const indices: number[] = []

    function has(value: number): boolean {
        return indices[value] !== undefined
            && indices[value]! < values.length
            && values[indices[value]!] === value
    }

    function add(value: number) {
        if (indices[value] === undefined || indices[value]! >= values.length || values[indices[value]!] !== value) {
            indices[value] = values.length
            values.push(value)
        }
    }

    function remove(value: number) {
        if (indices[value] !== undefined && indices[value]! < values.length && values[indices[value]!] === value) {
            const swap = values.pop()!
            if (swap !== value) {
                values[indices[value]!] = swap
                indices[swap] = indices[value]!
            }
        }
    }

    return {
        values,
        has,
        add,
        remove
    }
}
