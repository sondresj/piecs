const wasm = require('.')
const {
    // @ts-ignore
    __newArray,
    // @ts-ignore
    __getArray,
    ArrayU32_ID
} = require('.')

// Query

const all = (/** @type {number[]} */ ...componentIds) => {
    const ids = __newArray(ArrayU32_ID, componentIds)
    return wasm.QueryMask.wrap(wasm.all(ids.valueOf()))
}
const any = (/** @type {number[]} */ ...componentIds) => {
    const ids = __newArray(ArrayU32_ID, componentIds)
    return wasm.QueryMask.wrap(wasm.any(ids.valueOf()))
}
const not = (/** @type {number[]} */ ...componentIds) => {
    const ids = __newArray(ArrayU32_ID, componentIds)
    return wasm.QueryMask.wrap(wasm.not(ids.valueOf()))
}
const and = (/** @type {wasm.QueryMask[]} */ ...queryMasks) => {
    const maskArr = __newArray(ArrayU32_ID, queryMasks.map(qm => qm.valueOf()))
    return wasm.QueryMaskGroup.wrap(wasm.and(maskArr.valueOf()))
}
const or = (/** @type {wasm.QueryMask[]} */ ...queryMasks) => {
    const maskArr = __newArray(ArrayU32_ID, queryMasks.map(qm => qm.valueOf()))
    return wasm.QueryMaskGroup.wrap(wasm.or(maskArr.valueOf()))
}
const query = (/** @type {wasm.QueryMaskGroup} */ queryMaskGroup) => {
    const q = new wasm.Query(queryMaskGroup.valueOf())
    return {
        get length() {
            return q.length
        },
        /**
         * @param {number} i
         */
        get(i) {
            return __getArray(q.get(i))
        },
        /**
         * @param {number | wasm.Archetype} archetype
         */
        tryAdd(archetype) {
            return q.tryAdd(archetype.valueOf())
        },
        __ptr: q.valueOf()
    }
}

module.exports = {
    all,
    any,
    not,
    and,
    or,
    query,
}
