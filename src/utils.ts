export const cantorPair = (a: number, b: number) => {
    const sum = a + b
    return (sum * (sum + 1) >> 1) + b
}

/**
 * Start a timer and get elapsed time in millis by calling the returned function
 * @returns a function that returns the elapsed time in millis since starting.
 * Can be invoked multiple times
 */
 export const timer = (offset: number = 0) => {
    const start = performance.now() - offset
    return function getElapsed() {
        const end = performance.now()
        return end - start
    }
}
