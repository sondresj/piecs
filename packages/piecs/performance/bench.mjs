import { performance } from 'perf_hooks'

import add_remove from './add_remove.mjs'
import entity_cycle from './entity_cycle.mjs'
import frag_iter from './frag_iter.mjs'
import packed_1 from './packed_1.mjs'
import packed_5 from './packed_5.mjs'
import simple_iter from './simple_iter.mjs'

// Same tests as ecs-benchmark
const tests = [
    ['packed_1', packed_1(5_000)],
    ['packed_5', packed_5(1_000)],
    ['simple_iter', simple_iter(1_000)],
    ['frag_iter', frag_iter(100)],
    ['entity_cycle', entity_cycle(1_000)],
    ['add_remove', add_remove(1_000)],
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
    let cycle_n = 1.0
    let cycle_ms = 0.0
    let cycle_total_ms = 0.0

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
