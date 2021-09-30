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
    return wasm.QueryMask.wrap(wasm.all(ids))
}
const any = (/** @type {number[]} */ ...componentIds) => {
    const ids = __newArray(ArrayU32_ID, componentIds)
    return wasm.QueryMask.wrap(wasm.any(ids))
}
const not = (/** @type {number[]} */ ...componentIds) => {
    const ids = __newArray(ArrayU32_ID, componentIds)
    return wasm.QueryMask.wrap(wasm.not(ids))
}
const and = (/** @type {wasm.QueryMask[]} */ ...queryMasks) => {
    const maskArr = __newArray(ArrayU32_ID, queryMasks.map(qm => qm))
    return wasm.QueryMaskGroup.wrap(wasm.and(maskArr))
}
const or = (/** @type {wasm.QueryMask[]} */ ...queryMasks) => {
    const maskArr = __newArray(ArrayU32_ID, queryMasks.map(qm => qm))
    return wasm.QueryMaskGroup.wrap(wasm.or(maskArr))
}
const query = (/** @type {wasm.QueryMaskGroup} */ queryMaskGroup) => {
    // @ts-ignore
    const q = new wasm.Query(queryMaskGroup)
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
            // @ts-ignore
            return q.tryAdd(archetype)
        },
        __ptr: q
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
