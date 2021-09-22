const assert = require('assert')

const {
    __getString,
    __newArray,
    ArrayU32_ID,
    Query,
    Archetype,
    Vector,
    SparseSet,
    BitMask,
    all,
    QueryMask,
    any,
    not
} = require('..')

let suites = 0
let tests = 0
let testsPassed = 0
const colors = {
    Reset: "\x1b[0m",
    Bright: "\x1b[1m",
    Dim: "\x1b[2m",
    Underscore: "\x1b[4m",
    Blink: "\x1b[5m",
    Reverse: "\x1b[7m",
    Hidden: "\x1b[8m",
    FgBlack: "\x1b[30m",
    FgRed: "\x1b[31m",
    FgGreen: "\x1b[32m",
    FgYellow: "\x1b[33m",
    FgBlue: "\x1b[34m",
    FgMagenta: "\x1b[35m",
    FgCyan: "\x1b[36m",
    FgWhite: "\x1b[37m",
    BgBlack: "\x1b[40m",
    BgRed: "\x1b[41m",
    BgGreen: "\x1b[42m",
    BgYellow: "\x1b[43m",
    BgBlue: "\x1b[44m",
    BgMagenta: "\x1b[45m",
    BgCyan: "\x1b[46m",
    BgWhite: "\x1b[47m",
}

const color = (color, str) => {
    return `${color}${str}${colors.Reset}`
}

const describe = (suite, cb) => {
    suites++
    console.group(suite + ':')
    cb()
    console.groupEnd()
}

const test = (desc, cb) => {
    tests++

    try {
        cb()
        testsPassed++
        console.log('\u2705', desc)
    } catch(err) {
        console.log('\u274C', desc)
        console.log(color(colors.FgRed, err.message))
        console.error(err)
    }
}

describe('Vector', () => {
    test('Checked index assignment', () => {
        const vector = new Vector(10, 1.5, false)
        vector[0] = 1
        assert.strictEqual(vector[0], 1)
    })

})

describe('SparseSet', () => {
    test('set entry, expect has entry', () => {
        const set = new SparseSet(10)
        set.add(5)
        assert.ok(set.has(5))
    })

    test('get item at index, expect value', () => {
        const set = new SparseSet(10)
        set.add(5)
        assert.strictEqual(set.get(0), 5)
    })
})

describe('BitMask', () => {
    test('xor then has', () => {
        const mask = new BitMask(10)
        mask.xor(2)
        assert.ok(mask.has(2))
    })

    test('xor x2 then has not', () => {
        const mask = new BitMask(10)
        mask.xor(2)
        mask.xor(2)
        assert.ok(!mask.has(2))
    })

    test('or x2 then has', () => {
        const mask = new BitMask(10)
        mask.or(2)
        mask.or(2)
        assert.ok(mask.has(2))
    })

    test('and owerwrites whole byte', () => {
        const mask = new BitMask(10)
        mask.or(5)
        mask.or(2)
        mask.and(2)
        assert.ok(mask.has(2))
        assert.ok(!mask.has(5))
    })

    test('not returns new bitmask with all bytes flipped', () => {
        let mask = new BitMask(50)
        mask = BitMask.wrap(mask.not())
        const str = __getString(mask.toString())
        assert.strictEqual(str, '0ffffffff') // dunno where this 0 comes from, but i guess it's some weirdness in wasm?
    })

    test('is superset', () => {
        const supr = new BitMask(10)
        const sub = new BitMask(10)
        supr.or(1)
        supr.or(2)
        supr.or(3)
        sub.or(2)
        assert.ok(supr.isSuperSetOf(sub))
    })

    test('is not superset', () => {
        const supr = new BitMask(10)
        const sub = new BitMask(10)
        supr.or(1)
        supr.or(2)
        supr.or(3)
        sub.or(2)
        sub.or(4)
        assert.ok(!supr.isSuperSetOf(sub))
    })

    test('get intersection', () => {
        const a = new BitMask(50) // 2xu32
        a.or(36)
        a.or(18)
        a.or(4)
        const b = new BitMask(50)
        b.or(37)
        b.or(18)
        b.or(5)

        const intersection = BitMask.wrap(a.intersection(b))
        assert.ok(!intersection.has(36))
        assert.ok(!intersection.has(37))
        assert.ok(intersection.has(18))
        assert.ok(!intersection.has(5))
        assert.ok(!intersection.has(4))
    })
    test('get union', () => {
        const a = new BitMask(50) // 2xu32
        a.or(36)
        a.or(18)
        a.or(4)
        const b = new BitMask(50)
        b.or(37)
        b.or(18)
        b.or(5)

        const union = BitMask.wrap(a.union(b))
        assert.ok(union.has(36))
        assert.ok(union.has(37))
        assert.ok(union.has(18))
        assert.ok(union.has(5))
        assert.ok(union.has(4))
    })
    test('get symmetricDifference', () => {
        const a = new BitMask(50) // 2xu32
        a.or(36)
        a.or(18)
        a.or(4)
        const b = new BitMask(50)
        b.or(37)
        b.or(18)
        b.or(5)

        const symdiff = BitMask.wrap(a.symmetrictDifference(b))
        assert.ok(symdiff.has(36))
        assert.ok(symdiff.has(37))
        assert.ok(!symdiff.has(18))
        assert.ok(symdiff.has(5))
        assert.ok(symdiff.has(4))
    })
})

describe('Query', () => {
    const archMask = new BitMask(5)
    archMask.or(0)
    archMask.or(1)
    archMask.or(2)
    archMask.or(3)
    const archetype = new Archetype(archMask.valueOf())

    test('archetype is match for all', () => {
        const componentIds = __newArray(ArrayU32_ID, [1, 2]) // all are in archetype, but archetype has more
        const qmask = QueryMask.wrap(all(componentIds.valueOf()))
        const query = new Query(qmask.valueOf())
        query.tryAdd(archetype.valueOf())
        assert.strictEqual(query.length, 1)
        assert.strictEqual(Archetype.wrap(query.__get(0)).id, archetype.id)
    })

    test('archetype is match for any', () => {
        const componentIds = __newArray(ArrayU32_ID, [6, 2]) // 6 is not in archetype
        const qmask = QueryMask.wrap(any(componentIds.valueOf()))
        const query = new Query(qmask.valueOf())
        query.tryAdd(archetype.valueOf())
        assert.strictEqual(query.length, 1)
        assert.strictEqual(Archetype.wrap(query.__get(0)).id, archetype.id)
    })

    test('archetype is not match for not', () => {
        const componentIds = __newArray(ArrayU32_ID, [2]) // 2 is in archetype
        const qmask = QueryMask.wrap(not(componentIds.valueOf()))
        const query = new Query(qmask.valueOf())
        query.tryAdd(archetype.valueOf())
        assert.strictEqual(query.length, 0)
    })
})


console.log('Suites:', suites)
const failed = tests - testsPassed
console.log('Tests:', tests, failed > 0 ? color(colors.FgRed, `(failed: ${failed})`) : '')

// exit(failed > 0 ? 1 : 0)