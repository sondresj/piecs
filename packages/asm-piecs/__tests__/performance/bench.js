const { performance } = require('perf_hooks')
const add_remove = require('./add_remove.js')
// const entity_cycle = require('./entity_cycle.mjs')
// const frag_iter = require('./frag_iter.mjs')
// const packed_1 = require('./packed_1.mjs')
// const packed_5 = require('./packed_5.mjs')
// const simple_iter = require('./simple_iter.mjs')

// Same tests as ecs-benchmark
const tests = [
    ['add_remove', add_remove(1000)],
    // ['entity_cycle', entity_cycle(1000)],
    // ['frag_iter', frag_iter(100)],
    // ['packed_1', packed_1(5000)],
    // ['packed_5', packed_5(1000)],
    // ['simple_iter', simple_iter(1000)]
]

function bench_iter(fn, count) {
    const start = performance.now()
    for (let i = 0; i < count; i++) {
        fn()
    }
    const end = performance.now()
    return end - start
}

const run = (fn) => {
    let cycle_n = 1
    let cycle_ms = 0
    let cycle_total_ms = 0

    // Run multiple cycles to get an estimate
    while (cycle_total_ms < 500) {
        const elapsed = bench_iter(fn, cycle_n)
        cycle_ms = elapsed / cycle_n
        cycle_n *= 2
        cycle_total_ms += elapsed
    }

    // Try to estimate the iteration count for 500ms
    const target_n = 500 / cycle_ms
    const total_ms = bench_iter(fn, target_n)

    const result = {
        op_s: `${Math.floor((target_n / total_ms) * 1000).toLocaleString()} op/s`,
        ns_op: `${Math.floor((total_ms / target_n) * 1000 * 1000).toLocaleString()} ns/op`,
    }
    return result
}
const results = {}

for (const [test, fn] of tests) {
    results[test] = run(fn)
}

console.table(results)
