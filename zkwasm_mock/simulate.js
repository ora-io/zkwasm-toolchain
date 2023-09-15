import { ZKWasmRequireFailed } from "./error.js";
import { instantiateWasm, setupZKWasmMock } from "./bundle.js";
import { ZKWASMMock } from "./zkwasm_mock.js";


export async function simulate(basePath, wasmPath, privateInputStr, publicInputStr) {
    // let [privateInputStr, publicInputStr] = await proveInputGen(yamlPath, rpcUrl, blockid, expectedStateStr, isLocal, enableLog)
    const mock = new ZKWASMMock();
    mock.set_private_input(privateInputStr);
    mock.set_public_input(publicInputStr);
    setupZKWasmMock(mock);

    const { zkmain } = await instantiateWasm(wasmPath, basePath).catch((error) => {
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
