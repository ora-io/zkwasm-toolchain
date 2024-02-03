export class ZKWasmRequireFailed extends Error{
    constructor(message: string | undefined) {
      super(message);
    }
}
