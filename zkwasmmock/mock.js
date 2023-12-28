import { ZKWasmRequireFailed } from "./error.js";
import { instantiateWasm, setupZKWasmSimulator } from "./bundle.js";
import { Simulator } from "./simulator.js";
import fs from 'node:fs'
import path from 'node:path'

export class Mock {
    
    static async dryrunWithPath(wasmPathFromProjRoot, privateInputStr, publicInputStr) {

        const projectRoot = process.cwd()
        const wasmPath = path.join(projectRoot, wasmPathFromProjRoot)
        const wasm = fs.readFileSync(wasmPath)
        const wasmUint8Array = new Uint8Array(wasm)

        return this.dryrun(wasmUint8Array, privateInputStr, publicInputStr)
    }

    static async dryrun(wasmUint8Array, privateInputStr, publicInputStr, contextInputStr) {

        // let [privateInputStr, publicInputStr] = await proveInputGen(yamlPath, rpcUrl, blockid, expectedStateStr, isLocal, enableLog)
        const simulator = new Simulator();
        if (privateInputStr != null) {
            simulator.set_private_input(privateInputStr);
        }
        if (privateInputStr != null) {
            simulator.set_public_input(publicInputStr);
        }
        if (contextInputStr != null) {
            simulator.set_context_input(contextInputStr);
        }
        setupZKWasmSimulator(simulator);
        
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

}