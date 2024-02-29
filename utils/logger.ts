export abstract class CLELogger {
  abstract debug(...args: any[]): void
  abstract info(...args: any[]): void
  abstract warn(...args: any[]): void
  abstract error(...args: any[]): void
  abstract log(...args: any[]): void
  abstract write(msg: string): void
}

class Logger implements CLELogger {
  private writeCache: string[] = []
  debug(...args: any[]) {
    console.debug(...args)
  }
  info(...args: any[]) {
    console.info(...args)
  }
  warn(...args: any[]) {
    console.warn(...args)
  }
  error(...args: any[]) {
    console.error(...args)
  }
  log(...args: any[]) {
    console.log(...args)
  }
  write(msg: string) {
    if (msg === '\n') {
      this.debug(this.writeCache.join(''))
      this.writeCache = []
    } else {
      this.writeCache.push(msg)
    }
  }
}

// eslint-disable-next-line import/no-mutable-exports
export let logger: CLELogger = new Logger()

export function setCLELogger(newLogger: CLELogger) {
  logger = newLogger
}
