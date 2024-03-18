import { logger } from "../utils/index.js";
import { Simulator } from "./simulator.js";
import { swapEndian } from "./utils";

let zkwasmSimulator: Simulator;

export function setupZKWasmSimulator(simulator: Simulator) {
  zkwasmSimulator = simulator;
}

export let hasDebugOnlyFunc = false

async function instantiate(module: WebAssembly.Module, imports: Record<string, any> = {}) {
  hasDebugOnlyFunc = false
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      /**
       * zkWasm supported built-ins
       */
      require(x:0|1) {
        // sdk/zkwasm/require1(i32) => i64
        Simulator.require(x);
      },
      wasm_input(x:0|1) {
        // lib/common/zkwasm/wasm_input(i32) => i64
        return zkwasmSimulator?.wasm_input(x) || 0n;
      },
      wasm_write_context(arg:number) {
        //pass
      },
      wasm_read_context() {
        return zkwasmSimulator.wasm_read_context() || 0n;
      },
      wasm_dbg(x: bigint) {
        logger.log(x.toString());
      },
      wasm_dbg_char(x: any) {
        logger.write(String.fromCharCode(parseInt(x, 10)));
      },
      wasm_trace_size(): bigint {
        return 0n;
      },
      babyjubjub_sum_new(x: bigint): void {
      },
      babyjubjub_sum_push(x: bigint):void {
      },
      babyjubjub_sum_finalize(): bigint {
        return zkwasmSimulator.babyjubjub_sum_finalize();
      },

      /**
       * Non-zkWasm supported debug only hooks
       */
      js_log(arg: any) {
        // reserved debug hook
        console.log(arg);
        hasDebugOnlyFunc = true
      },
      js_log_u64(arg: any) {
        // reserved debug hook
        console.log(BigInt.asUintN(64, arg));
        hasDebugOnlyFunc = true
      },
      // printDec(arg) {
      //   process.stdout.write(arg);
      // },
      // printHex(arg) {
      //   process.stdout.write(arg.toString(16).padStart(2, '0'));
      // },
      // printSp() {
      //   process.stdout.write(' ');
      // },
      // printLn() {
      //   console.log();
      // },
      // c_log(arg) {
      //   // to compatible with c-wasm
      //   console.log('c_log: ', arg);
      // },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports) as any;
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf(
    {
      // asmain_local(rawreceipts:any, matched_event_offsets:any) {
      //   // lib/main_local/asmain(~lib/typedarray/Uint8Array, ~lib/typedarray/Uint32Array) => ~lib/typedarray/Uint8Array
      //   rawreceipts = __retain(
      //     __lowerTypedArray(Uint8Array, 4, 0, rawreceipts) || __notnull(),
      //   );
      //   matched_event_offsets =
      //     __lowerTypedArray(Uint32Array, 5, 2, matched_event_offsets) ||
      //     __notnull();
      //   try {
      //     return __liftTypedArray(
      //       Uint8Array,
      //       exports.asmain(rawreceipts, matched_event_offsets) >>> 0,
      //     );
      //   } finally {
      //     __release(rawreceipts);
      //   }
      // },
      asmain() {
        // dev: always throw for debug purpose.
        try {
          return __liftTypedArray(
            Uint8Array,
            exports.asmain() >>> 0,
          )
        }
        catch (e) {
          throw e;
        }
      },
    },
    exports,
  );
  function __liftTypedArray(constructor: Uint8ArrayConstructor, pointer: number) {
    if (!pointer) return null;
    return new constructor(
      memory.buffer,
      __getU32(pointer + 4),
      __dataview.getUint32(pointer + 8, true) / constructor.BYTES_PER_ELEMENT,
    ).slice();
  }
  function __lowerTypedArray(constructor: Uint8ArrayConstructor | Uint32ArrayConstructor, id: number, align: number, values: any[] | null) {
    if (values == null) return 0;
    const length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 1)) >>> 0,
      header = exports.__new(12, id) >>> 0;
    __setU32(header + 0, buffer);
    __dataview.setUint32(header + 4, buffer, true);
    __dataview.setUint32(header + 8, length << align, true);
    new constructor(memory.buffer, buffer, length).set(values);
    exports.__unpin(buffer);
    return header;
  }
  const refcounts = new Map();
  function __retain(pointer: number | void) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount) refcounts.set(pointer, refcount + 1);
      else refcounts.set(exports.__pin(pointer), 1);
    }
    return pointer;
  }
  function __release(pointer: any) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount === 1) exports.__unpin(pointer), refcounts.delete(pointer);
      else if (refcount) refcounts.set(pointer, refcount - 1);
      else
        throw Error(
          `invalid refcount '${refcount}' for reference '${pointer}'`,
        );
    }
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  let __dataview = new DataView(memory.buffer);
  function __setU32(pointer: number, value: number) {
    try {
      __dataview.setUint32(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint32(pointer, value, true);
    }
  }
  function __getU32(pointer: number) {
    try {
      return __dataview.getUint32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint32(pointer, true);
    }
  }
  return adaptedExports;
}

export const instantiateWasm = async (wasmUnit8Array: Uint8Array) => {
    return instantiate(
      await (async () => {
        return globalThis.WebAssembly.compile(
          wasmUnit8Array.buffer,
        )
      })(),
      {},
    )
  }
