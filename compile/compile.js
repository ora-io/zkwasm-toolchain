import { execSync } from "child_process";
export class Compiler{
    static assembleCompileCommand(entryPath, wasmPath, abortPath, watPath, memoryBase){
        let command = `npx asc ${entryPath} -o ${wasmPath} --use abort=${abortPath} -O --noAssert --disable bulk-memory --exportRuntime --runtime stub`
        if (watPath != null) {
            command += ` -t ${watPath}`
        }
        if (memoryBase != null) {
            command += ` --memoryBase ${memoryBase}`
        }
        return command
    }
    static compile(entryPath, wasmPath, abortPath, watPath=null, memoryBase=null){
        const commands = [
            this.assembleCompileCommand(entryPath, wasmPath, abortPath, watPath, memoryBase), // note: need --exportRuntime or --bindings esm; (--target release)
          ];
          const combinedCommand = commands.join(" && ");
          execSync(combinedCommand, { encoding: "utf-8" });
    }
}