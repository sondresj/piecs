let suites = 0
const describe = (/** @type {string} */ suite, /** @type {() => void} */ cb) => () => {
    suites++
    console.group(suite + ':')
    cb()
    console.groupEnd()
}

let tests = 0
let testsPassed = 0
const test = (/** @type {string} */ desc, /** @type {() => void} */ cb) => {
    tests++

    try {
        cb()
        testsPassed++
        console.log('\u2705', desc)
    } catch (err) {
        console.log('\u274C', desc)
        console.log(color(colors.FgRed, err.message))
        console.error(err)
    }
}

const colors = {
    Reset: '\x1b[0m',
    Bright: '\x1b[1m',
    Dim: '\x1b[2m',
    Underscore: '\x1b[4m',
    Blink: '\x1b[5m',
    Reverse: '\x1b[7m',
    Hidden: '\x1b[8m',
    FgBlack: '\x1b[30m',
    FgRed: '\x1b[31m',
    FgGreen: '\x1b[32m',
    FgYellow: '\x1b[33m',
    FgBlue: '\x1b[34m',
    FgMagenta: '\x1b[35m',
    FgCyan: '\x1b[36m',
    FgWhite: '\x1b[37m',
    BgBlack: '\x1b[40m',
    BgRed: '\x1b[41m',
    BgGreen: '\x1b[42m',
    BgYellow: '\x1b[43m',
    BgBlue: '\x1b[44m',
    BgMagenta: '\x1b[45m',
    BgCyan: '\x1b[46m',
    BgWhite: '\x1b[47m',
}

const color = (/** @type {string} */ color, /** @type {string} */ str) => {
    return `${color}${str}${colors.Reset}`
}

module.exports = {
    color,
    colors,
    describe,
    test,
    getStats: () => {
        return {
            suites,
            tests,
            testsPassed,
            testsFailed: tests - testsPassed
        }
    }
}
