import { builtinModules } from 'node:module'
import path from 'node:path'
import esbuild from 'rollup-plugin-esbuild'
// import nodeResolve from '@rollup/plugin-node-resolve'
import commonjs from '@rollup/plugin-commonjs'
import json from '@rollup/plugin-json'
import { defineConfig } from 'rollup'

const input = path.join(__dirname, './index.js')

const external = [
  ...builtinModules,
]

const plugins = [
  json(),
  // nodeResolve({
  //   preferBuiltins: false,
  //   bowser: true
  // }),
  commonjs(),
]

const nodePlugins = [
  ...plugins,
  esbuild.default({
    target: 'node14',
    define: {
      __BROWSER__: 'false',
    },
  }),
]


const commonConfig = {
  input,
  external,
  treeshake: 'smallest',
}

const outputs = env => [{
  dir: 'dist',
  format: 'esm',
  entryFileNames: `[name].mjs`,
}, {
  dir: 'dist',
  format: 'cjs',
  entryFileNames: `[name].cjs`,
}]

export default () => defineConfig([
  {
    ...commonConfig,
    output: outputs(),
    plugins: [
      ...nodePlugins,
    ],
  },
])
