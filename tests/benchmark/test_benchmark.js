import { WasmBenchmark as bm } from "../../wasmbenchmark/benchmark.js";
console.log(bm.watLocByPath('tests/benchmark/build/block.wat'), 'lines');
console.log(bm.wasmSizeByPath('tests/benchmark/build/block.wasm'), 'bytes');
