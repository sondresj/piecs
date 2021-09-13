import { World } from '../lib/World.js'
import { every, not, and } from '../lib/Query.js'
import { performance } from 'perf_hooks'

function addRemove(count) {
    const world = new World({
        a: {
            type: 'uint32',
            default: 0
        },
        b: {
            type: 'uint32',
            default: 0
        }
    }, [{
        name: 'addB',
        query: and(every('a'), not('b')),
        execute: (entities, world) => {
            for (const entity of entities) {
                world.setComponentImmediate(entity, 'b')
            }
        }
    }, {
        name: 'removeB',
        query: and(every('b')),
        execute: (entities, world) => {
            for (const entity of entities) {
                world.removeComponentImmediate(entity, 'b')
            }
        }
    }])

    for (let i = 0; i < count; i++) {
        const e = world.spawnEntityImmediate()
        world.setComponentImmediate(e, 'a')
    }

    return () => {
        world.update()
    }
}

const fn = addRemove(1000)

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
    hz: (target_n / total_ms) * 1_000, // ops/sec
    ms: total_ms / target_n, // ms/op
}
console.log(`${Math.floor(result.hz).toLocaleString()} op/s`)

function bench_iter(fn, count) {
    const start = performance.now()
    for (let i = 0; i < count; i++) {
        fn()
    }
    const end = performance.now()
    return end - start
}
