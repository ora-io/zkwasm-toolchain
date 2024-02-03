
function trimPrefix(str: string, prefix: string) {
    if (str.startsWith(prefix)) {
        str = str.substring(prefix.length);
    }
    return str;
}

export class Input{
    inputStr=['',''];
    
    static privateId = 0
    static publicId = 1


    getPrivateInputStr(){
        return this.inputStr[Input.privateId]
    }

    getPublicInputStr(){
        return this.inputStr[Input.publicId]
    }

    formatIntInput(input: number) {
        return `0x${input.toString(16)}:i64 `;
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
    
    addInt(input: number, isPublic: boolean){
        this.inputStr[isPublic ? Input.publicId : Input.privateId] += this.formatIntInput(input)
    }

    addHexString(input: string, isPublic: boolean) {
        this.inputStr[isPublic ? Input.publicId : Input.privateId] += this.formatHexStringInput(input)
    }

    addVarLenHexString(input: string, isPublic: boolean) {
        this.inputStr[isPublic ? Input.publicId : Input.privateId] += this.formatVarLenInput(input)
    }

    // ['0xaa', '0xbbbb', '0xcccccc']
    addVarLenHexStringArray(input: string[], isPublic: boolean) {
        this.inputStr[isPublic ? Input.publicId : Input.privateId] += this.formatIntInput(input.length)
        for (let i = 0; i < input.length; i ++){
            this.inputStr[isPublic ? Input.publicId : Input.privateId] += this.formatVarLenInput(input[i])
        }
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