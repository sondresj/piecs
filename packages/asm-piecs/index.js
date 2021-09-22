const fs = require('fs')
const { WASI } = require('wasi')
const { argv, env } = require('process')

const wasi = new WASI({
    // args: argv,
    env,
})
const loader = require('@assemblyscript/loader')
const imports = { wasi_snapshot_preview1: wasi.wasiImport }
const wasmModule = loader.instantiateSync(fs.readFileSync(__dirname + '/build/optimized.wasm'), imports)

wasi.initialize(wasmModule.instance)
module.exports = wasmModule.exports
