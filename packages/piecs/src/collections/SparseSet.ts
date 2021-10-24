export type SparseSet = {
    readonly values: ArrayLike<number>
    has(value: number): boolean
    add(value: number): void
    remove(value: number): void
}

export const createSparseSet = (): SparseSet => {
    const values: number[] = []
    const indices: number[] = []

    return Object.freeze({
        values,
        has(value: number): boolean {
            return values[indices[value]!] === value
        },
        add(value: number) {
            if (value >= indices.length
                || indices[value] === undefined
                || indices[value]! >= values.length
                || values[indices[value]!] !== value
            ) {
                indices[value] = values.length
                values.push(value)
            }
        },
        remove(value: number) {
            if (values[indices[value]!] === value) {
                const swap = values.pop()!
                if (swap !== value) {
                    values[indices[value]!] = swap
                    indices[swap] = indices[value]!
                }
            }
        }
    })
}
