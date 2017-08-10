declare function log(x: uint8): void;

function start(): void {
  grow_memory(20);
}

function process(i: uint32): void {
  let a: uint8 = getByteAt(i);
  let b: uint8 = getByteAt(i + 1);
  let c: uint8 = getByteAt(i + 2);
  let avg: uint8 = (a / 3 + b / 3 + c / 3) | 0;

  store<uint8>((i) as uintptr, avg);
  store<uint8>((i + 1) as uintptr, avg);
  store<uint8>((i + 2) as uintptr, avg);
}

export function grayscaleDuff(pos: uint32, offset: uint32): void {
  let i: uint32 = 0;
  let times: int = (offset / 8 | 0) as int;
  let start: uint32 = offset % 8;

  do {
    switch (start) {
      case 0: process((i += 4) + pos);
      case 7: process((i += 4) + pos);
      case 6: process((i += 4) + pos);
      case 5: process((i += 4) + pos);
      case 4: process((i += 4) + pos);
      case 3: process((i += 4) + pos);
      case 2: process((i += 4) + pos);
      case 1: process((i += 4) + pos);
    }
    start = 0;
    times--;
  } while (times);
}

export function grayscale(pos: uint32, offset: uint32): void {
  let i: uint32 = 0;
  while (i < offset) {
    let a: uint8 = getByteAt(pos + i);
    let b: uint8 = getByteAt(pos + i + 1);
    let c: uint8 = getByteAt(pos + i + 2);
    let avg: uint8 = (a / 3 + b / 3 + c / 3) | 0;

    store<uint8>((pos + i) as uintptr, avg);
    store<uint8>((pos + i + 1) as uintptr, avg);
    store<uint8>((pos + i + 2) as uintptr, avg);
    i += 4;
  }
}

export function getByteAt(pos: uint32): uint8 {
  const ret: uint8 = load<uint8>(pos as uintptr);
  return ret;
}

export function getCurrentMemory(): int {
  return current_memory();
}
