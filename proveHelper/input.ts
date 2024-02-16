
function trimPrefix(str: string, prefix: string) {
    if (str.startsWith(prefix)) {
        str = str.substring(prefix.length);
    }
    return str;
}

export class Input{
    inputStr = ['', '', '']
    auxParams = {}

    static PrivateId = 0
    static PublicId = 1
    static ContextId = 2

    getPrivateInputStr() {
      return this.inputStr[Input.PrivateId]
    }

    getPublicInputStr() {
      return this.inputStr[Input.PublicId]
    }

    getContextInputStr() {
      return this.inputStr[Input.ContextId]
    }

    formatIntInput(input: number) {
        return `0x${input.toString(16)}:i64 `;
    }

    // '+': convert boolean to number, for compatible
    append(input: string, inputChanId: number = 0) {
      this.inputStr[+inputChanId] += input;
    }

    formatHexStringInput(input: string) {
        return `0x${trimPrefix(input, "0x")}:bytes-packed `;
    }

    formatVarLenInput(input: string) {
        var inp = trimPrefix(input, "0x");
        var formatted = `${this.formatIntInput(
            Math.ceil(inp.length / 2),
        )}${this.formatHexStringInput(inp)}`;
        return formatted;
    }

    addInt(input: number, inputChanId: number = 0) {
        this.append(this.formatIntInput(input), inputChanId)
    }

    addHexString(input: string, inputChanId: number = 0) {
        this.append(this.formatHexStringInput(input), inputChanId)
    }

    addVarLenHexString(input: string, inputChanId: number = 0) {
        this.append(this.formatVarLenInput(input), inputChanId)
    }

    // ['0xaa', '0xbbbb', '0xcccccc']
    addVarLenHexStringArray(input: string, inputChanId: number = 0) {
        this.append(this.formatIntInput(input.length), inputChanId)
        for (let i = 0; i < input.length; i++)
            this.append(this.formatVarLenInput(input[i]), inputChanId)
    }

// // Format inputs with length and input value
// export function formatIntInput(input) {
//     return ;
//   }
  
//   // Format bytes input
//   export function formatHexStringInput(input) {
//     return `0x${trimPrefix(input, "0x")}:bytes-packed `;
//   }
  
//   // Format inputs with length and input value
//   export function formatVarLenInput(input) {
//     //   var formatted = "";
//     //   inputs.map((input) => {
//     //     var inp = trimPrefix(input, '0x')
//     //     formatted += `${formatIntInput(Math.ceil(inp.length / 2))}${formatHexStringInput(inp)}`;
//     //   });
  
//     var inp = trimPrefix(input, "0x");
//     var formatted = `${formatIntInput(
//       Math.ceil(inp.length / 2),
//     )}${formatHexStringInput(inp)}`;
//     return formatted;
}