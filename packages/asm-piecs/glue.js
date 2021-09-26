const wasm = require('.')
const {
    __newArray,
    ArrayU32_ID
} = require('.')

// Query

const all = (...componentIds) => {
    const ids = __newArray(ArrayU32_ID, componentIds)
    return wasm.QueryMask.wrap(wasm.all(ids.valueOf()))
}
const any = (...componentIds) => {
    const ids = __newArray(ArrayU32_ID, componentIds)
    return wasm.QueryMask.wrap(wasm.any(ids.valueOf()))
}
const not = (...componentIds) => {
    const ids = __newArray(ArrayU32_ID, componentIds)
    return wasm.QueryMask.wrap(wasm.not(ids.valueOf()))
}
const and = (...queryMasks) => {
    const maskArr = __newArray(ArrayU32_ID, queryMasks.map(qm => qm.valueOf()))
    return wasm.QueryMaskGroup.wrap(wasm.and(maskArr.valueOf()))
}
const or = (...queryMasks) => {
    const maskArr = __newArray(ArrayU32_ID, queryMasks.map(qm => qm.valueOf()))
    return wasm.QueryMaskGroup.wrap(wasm.or(maskArr.valueOf()))
}
const query = (queryMask) => {
    const q = new wasm.Query(queryMask.valueOf())
    return q
}

module.exports = {
    all,
    any,
    not,
    and,
    or,
    query,
}
