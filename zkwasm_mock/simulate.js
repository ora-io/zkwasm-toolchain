import { ZKWasmRequireFailed } from "./error.js";
import { instantiateWasm, setupZKWasmMock } from "./bundle.js";
import { ZKWASMMock } from "./zkwasm_mock.js";
import fs from 'node:fs'
import path from 'node:path'

export async function simulateWithPath(wasmPathFromProjRoot, privateInputStr, publicInputStr) {

    const projectRoot = process.cwd()
    const wasmPath = path.join(projectRoot, wasmPathFromProjRoot)
    const wasm = fs.readFileSync(wasmPath)
    const wasmUint8Array = new Uint8Array(wasm)

    return simulate(wasmUint8Array, privateInputStr, publicInputStr)
}

export async function simulate(wasmUint8Array, privateInputStr, publicInputStr) {

    // let [privateInputStr, publicInputStr] = await proveInputGen(yamlPath, rpcUrl, blockid, expectedStateStr, isLocal, enableLog)
    const mock = new ZKWASMMock();
    mock.set_private_input(privateInputStr);
    mock.set_public_input(publicInputStr);
    setupZKWasmMock(mock);
    
    const { zkmain } = await instantiateWasm(wasmUint8Array).catch((error) => {
        throw error
    });

    try {
        zkmain();
    } catch (e){
        if (e instanceof ZKWasmRequireFailed){
            return false
        }
        throw e
    }

    // if (enableLog){
    //     console.log("[+] ZKWASM MOCK EXECUTION SUCCESS!", "\n");
    // }

    return true
}
