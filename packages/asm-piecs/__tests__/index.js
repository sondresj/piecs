const { getStats, color, colors } = require('./utils')

const bitMask = require('./BitMask')
const query = require('./Query')
const sparseSet = require('./SparseSet')
const world = require('./World')

bitMask()
query()
sparseSet()
world()

const {
    suites,
    tests,
    testsFailed
} = getStats()

console.log('Suites:', suites)
console.log('Tests:', tests, testsFailed > 0 ? color(colors.FgRed, `(failed: ${testsFailed})`) : '')

// exit(failed > 0 ? 1 : 0)
