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
  const p = malloc(10000);

  const img = await loadImage('./assets/lenna.png');
  const canvas = document.querySelector("canvas");
  const ctx = canvas.getContext("2d");
  let imgData = null;
  let data = null;
  const drawImage = function () {
    ctx.drawImage(img, 0, 0, img.width, img.height);
    imgData = ctx.getImageData(0, 0, canvas.width, canvas.height);
    data = imgData.data;
  };

  /**
   * normal
   */
  drawImage();
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
  drawImage();
  console.time('wasm grayscale');
  let i = 0;
  while (i < data.length) {
    const numberCount = data.length - i < 10000 ? data.length - i : 10000;
    view.set(data.slice(i, i + numberCount), p);
    grayscale(p, numberCount);
    data.set(view.slice(p, p + numberCount), i);
    free(p);
    i += 10000;
  }
  ctx.putImageData(imgData, 0, 0);
  console.timeEnd('wasm grayscale');


  /**
   * grayscale with duff's device
   */
  drawImage();
  console.time('grayscale with duff\'s device');
  let j = 0;
  while (j < data.length) {
    const numberCount = data.length - j < 10000 ? data.length - j : 10000;
    view.set(data.slice(j, j + numberCount), p);
    grayscaleDuff(p, numberCount);
    data.set(view.slice(p, p + numberCount), j);
    free(p);
    j += 10000;
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
