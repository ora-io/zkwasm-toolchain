import { execSync } from "child_process";
export class Compiler{
    static assembleCompileCommand(entryPath: string, wasmPath: string, abortPath: string, watPath: string, memoryBase: string, other: string){
        let command = `npx asc ${entryPath} -o ${wasmPath} --use abort=${abortPath} -O --noAssert --disable bulk-memory --exportRuntime --runtime stub ${other}`
        if (watPath != null) {
            command += ` -t ${watPath}`
        }
        if (memoryBase != null) {
            command += ` --memoryBase ${memoryBase}`
        }
        return command
    }
    static compile(entryPath: string, wasmPath: string, abortPath: string, watPath: string = '', memoryBase: string ='', other: string =''){
        const commands = [
            this.assembleCompileCommand(entryPath, wasmPath, abortPath, watPath, memoryBase, other), // note: need --exportRuntime or --bindings esm; (--target release)
          ];
          const combinedCommand = commands.join(" && ");
          execSync(combinedCommand, { encoding: "utf-8" });
    }
}