const now = globalThis && globalThis.performance
    ? performance.now
    : Date.now

/**
 * Start a timer and get elapsed time in millis by calling the returned function
 * @returns a function that returns the elapsed time in millis since starting.
 * Can be invoked multiple times
 */
export const timer = (offset = 0) => {
    const start = now() - offset
    return function getElapsed() {
        const end = now()
        return end - start
    }
}
