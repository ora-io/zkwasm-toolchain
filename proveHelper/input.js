
function trimPrefix(str, prefix) {
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

    formatIntInput(input) {
        return `0x${input.toString(16)}:i64 `;
    }

    formatHexStringInput(input) {
        return `0x${trimPrefix(input, "0x")}:bytes-packed `;
    }

    formatVarLenInput(input) {
        var inp = trimPrefix(input, "0x");
        var formatted = `${this.formatIntInput(
            Math.ceil(inp.length / 2),
        )}${this.formatHexStringInput(inp)}`;
        return formatted;
    }
    
    addInt(input, isPublic){
        this.inputStr[isPublic ? Input.publicId : Input.privateId] += this.formatIntInput(input)
    }

    addHexStringInput(input, isPublic) {
        this.inputStr[isPublic ? Input.publicId : Input.privateId] += this.formatHexStringInput(input)
    }

    addVarLenInput(input, isPublic) {
        this.inputStr[isPublic ? Input.publicId : Input.privateId] += this.formatVarLenInput(input)
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