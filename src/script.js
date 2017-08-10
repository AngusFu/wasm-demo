;(async function () {
  const imports = {
    env: {
      log(a) {
        console.log(a);
      }
    }
  };

  const response = await fetch('./assets/module.wasm');
  const buffer = await response.arrayBuffer();
  const { instance } = await WebAssembly.instantiate(
    new Uint8Array(buffer),
    imports
  );
  const {
    malloc,
    free,
    memory,
    grayscaleDuff,
    grayscale,
    getByteAt
  } = instance.exports;

  const view = new Uint8Array(memory.buffer);
  const PIECE_BYTES = 20000;
  const pointer = malloc(PIECE_BYTES);

  const img = await loadImage('./assets/lenna.png');
  const canvas = document.querySelector("canvas");
  const ctx = canvas.getContext("2d");
  let imgData = null;
  let data = null;
  const drawImage = async function () {
    await sleep(300);
    ctx.drawImage(img, 0, 0, img.width, img.height);
    imgData = ctx.getImageData(0, 0, canvas.width, canvas.height);
    data = imgData.data;
    await sleep(1000);
  };

  /**
   * normal
   */
  await drawImage();
  console.time('normal');
  for (let i = 0; i < data.length; i += 4) {
    data[i] = data[i + 1] = data[i + 2]
      = (data[i] + data[i + 1] + data[i + 2]) / 3
  }
  ctx.putImageData(imgData, 0, 0);
  console.timeEnd('normal');

  /**
   * normal grayscale
   */
  await drawImage();
  console.time('wasm grayscale');
  let i = 0;
  while (i < data.length) {
    const num = data.length - i < PIECE_BYTES ? data.length - i : PIECE_BYTES;
    view.set(data.slice(i, i + num), pointer);
    grayscale(pointer, num);
    data.set(view.slice(pointer, pointer + num), i);
    i += PIECE_BYTES;
  }
  ctx.putImageData(imgData, 0, 0);
  console.timeEnd('wasm grayscale');


  /**
   * grayscale with duff's device
   */
  await drawImage();
  console.time('grayscale with duff\'s device');
  let j = 0;
  while (j < data.length) {
    const num = data.length - j < PIECE_BYTES ? data.length - j : PIECE_BYTES;
    view.set(data.slice(j, j + num), pointer);
    grayscaleDuff(pointer, num);
    data.set(view.slice(pointer, pointer + num), j);
    j += PIECE_BYTES;
  }
  ctx.putImageData(imgData, 0, 0);
  console.timeEnd('grayscale with duff\'s device');
})();

function loadImage(src) {
  return new Promise((resolve, reject) => {
    const img = new Image();
    img.src = src;
    img.onload = function () {
      resolve(img);
    };
  });
}

function sleep(t) {
  return new Promise((resolve, reject) => {
    setTimeout(resolve, t);
  });
}
