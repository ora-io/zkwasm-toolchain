import { builtinModules } from 'node:module'
import path from 'node:path'
import esbuild from 'rollup-plugin-esbuild'
import { dts } from 'rollup-plugin-dts'
// import nodeResolve from '@rollup/plugin-node-resolve'
import commonjs from '@rollup/plugin-commonjs'
import json from '@rollup/plugin-json'
import { defineConfig } from 'rollup'

const input = path.join(__dirname, './index.ts')
const libInput = path.join(__dirname, './index.lib.ts')

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
    target: 'node14'
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
  entryFileNames: `[name]${env ? `.${env}` : ''}.mjs`,
}, {
  dir: 'dist',
  format: 'cjs',
  entryFileNames: `[name]${env ? `.${env}` : ''}.cjs`,
}]

export default () => defineConfig([
  {
    ...commonConfig,
    output: outputs(),
    plugins: [
      ...nodePlugins,
    ],
  },
  {
    ...commonConfig,
    input: libInput,
    output: outputs(),
    plugins: [
      ...nodePlugins,
    ],
  },
  {
    input,
    output: {
      dir: 'dist',
      entryFileNames: '[name].d.ts',
      format: 'esm',
    },
    external,
    plugins: [
      dts({ respectExternal: true }),
    ],
  },
  {
    input: libInput,
    output: {
      dir: 'dist',
      entryFileNames: '[name].d.ts',
      format: 'esm',
    },
    external,
    treeshake: 'smallest',
    plugins: [
      esbuild.default({
        target: 'node14',
      }),
      dts({ respectExternal: true }),
    ],
  },
])
