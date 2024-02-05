import fs from 'node:fs'
import path from 'node:path'

export class WasmBenchmark {
    static watLoc(watContent: string) {
        return watContent.split("\n").length
    }
    static watLocByPath(watPathFromProjRoot: string) {
        const projectRoot = process.cwd()
        const watPath = path.join(projectRoot, watPathFromProjRoot)

        const watContent = fs.readFileSync(watPath, "utf-8");
        return this.watLoc(watContent)
    }
    static wasmSize(wasmUint8Array: Uint8Array) {
        return wasmUint8Array.length
    }
    static wasmSizeByPath(wasmPathFromProjRoot: string) {
        const projectRoot = process.cwd()
        const wasmPath = path.join(projectRoot, wasmPathFromProjRoot)
        const wasm = fs.readFileSync(wasmPath)
        const wasmUint8Array = new Uint8Array(wasm)
        
        return this.wasmSize(wasmUint8Array)
    }
}