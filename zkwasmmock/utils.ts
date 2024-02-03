

export function fromHexString(hexString: string) {
  hexString = hexString.startsWith("0x") ? hexString.slice(2) : hexString;
  hexString = hexString.length % 2 ? "0" + hexString : hexString;
  return Uint8Array.from(Buffer.from(hexString, "hex"));
}

export function toHexString(bytes: string | Uint8Array) {
  return Buffer.from(bytes).toString("hex");
}

export function toHexStringBytes32Reverse(arr: Uint8Array) {
  let result = "";
  for (let i = 0; i < arr.length / 32; i++) {
    result +=
      "0x" + toHexString(arr.slice(i * 32, (i + 1) * 32).reverse()) + "\n";
  }
  return result;
}

export function areEqualArrays(first: Uint8Array, second: Uint8Array) {
  return (
    first.length === second.length &&
    first.every((value, index) => value === second[index])
  );
}

export function trimPrefix(str: string, prefix: string) {
  if (str.startsWith(prefix)) {
    str = str.substring(prefix.length);
  }
  return str;
}

export function concatHexStrings(hexStrings: string[]) {
  let result = "";
  for (let hexString of hexStrings) {
    result += hexString.startsWith("0x") ? hexString.slice(2) : hexString;
  }
  return "0x" + result;
}

export function swapEndian(hexStr: string) {
  if (hexStr.length % 2 !== 0) {
      hexStr = '0' + hexStr;
  }
  const bytes = hexStr.match(/.{1,2}/g)?.reverse();
  return bytes?.join('');
}
