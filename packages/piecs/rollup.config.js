import { terser } from 'rollup-plugin-terser'
import dts from 'rollup-plugin-dts'

const outDir = 'dist'

export default [{
    input: 'build/index.js',
    output: [{
        file: `${outDir}/index.mjs`,
        format: 'esm',
    }, {
        file: `${outDir}/index.cjs`,
        format: 'cjs',
        generatedCode: { consBindings: true }
    }, {
        file: `${outDir}/index.min.js`,
        format: 'es',
        plugins: [terser()]
    }]
}, {
    input: 'build/index.d.ts',
    output: [{
        file: `${outDir}/index.d.ts`,
        format: 'es'
    }, {
        file: `${outDir}/index.d.mts`,
        format: 'es'
    }],
    plugins: [dts()]
}]
