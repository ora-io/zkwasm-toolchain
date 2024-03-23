import { Input } from "../../proveHelper/input.js"

let input = new Input()
input.addInt(12345, true)
input.addHexString('0xa', true)
input.addVarLenHexString('0xabc', true)

input.addInt(12345, false)
input.addHexString('0xabcd', false)
input.addVarLenHexString('0xabcdabcd', false)

console.log('Public Input:', input.getPublicInputStr())
console.log('Private Input:', input.getPrivateInputStr())