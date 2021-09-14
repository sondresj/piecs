import { World } from '../lib/World.js'
import { every } from '../lib/Query.js'
import { performance } from 'perf_hooks'

function simpleIter(count) {
    const world = new World({
        a: {
            type: 'uint8',
            default: 0
        },
        b: {
            type: 'uint8',
            default: 0
        },
        c: {
            type: 'uint8',
            default: 0
        },
        d: {
            type: 'uint8',
            default: 0
        },
        e: {
            type: 'uint8',
            default: 0
        },
    }, [{
        name: 'ABSystem',
        query: every('a', 'b'),
        execute: (entities, world) => {
            for (const entity of entities) {
                const a = world.getEntityComponent(entity, 'a')
                const b = world.getEntityComponent(entity, 'b')
                world.setComponentImmediate(entity, 'a', b)
                world.setComponentImmediate(entity, 'b', a)
            }
        }
    }, {
        name: 'CDSystem',
        query: every('c', 'd'),
        execute: (entities, world) => {
            for (const entity of entities) {
                const c = world.getEntityComponent(entity, 'c')
                const d = world.getEntityComponent(entity, 'd')
                world.setComponentImmediate(entity, 'c', d)
                world.setComponentImmediate(entity, 'd', c)
            }
        }
    }, {
        name: 'CESystem',
        query: every('c', 'e'),
        execute: (entities, world) => {
            for (const entity of entities) {
                const c = world.getEntityComponent(entity, 'c')
                const e = world.getEntityComponent(entity, 'e')
                world.setComponentImmediate(entity, 'c', e)
                world.setComponentImmediate(entity, 'e', c)
            }
        }
    }])

    for (let i = 0; i < count; i++) {
        const e1 = world.spawnEntityImmediate()
        world
            .setComponentImmediate(e1, 'a', 0)
            .setComponentImmediate(e1, 'b', 1)
        const e2 = world.spawnEntityImmediate()
        world
            .setComponentImmediate(e2, 'a', 0)
            .setComponentImmediate(e2, 'b', 1)
            .setComponentImmediate(e2, 'c', 2)
        const e3 = world.spawnEntityImmediate()
        world
            .setComponentImmediate(e3, 'a', 0)
            .setComponentImmediate(e3, 'b', 1)
            .setComponentImmediate(e3, 'c', 2)
            .setComponentImmediate(e3, 'd', 3)
        const e4 = world.spawnEntityImmediate()
        world
            .setComponentImmediate(e4, 'a', 0)
            .setComponentImmediate(e4, 'b', 1)
            .setComponentImmediate(e4, 'c', 2)
            .setComponentImmediate(e4, 'd', 3)
            .setComponentImmediate(e4, 'e', 4)
    }

    return () => {
        world.update()
    }
}

const fn = simpleIter(1000)

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
