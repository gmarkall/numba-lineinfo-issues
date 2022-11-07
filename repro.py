import numba.cuda
import numpy as np
import PIL.Image

@numba.cuda.jit(device=True, inline=False, lineinfo=True)
def get_pixel(img, x, y, size):
    if x >= 0 and y >= 0 and x < size and y < size:
        return img[y][x]
    else:
        return 0.
    
# 9x9 gaussian blur kernel
@numba.cuda.jit(lineinfo=True)
def gaussian_blur(img_in, img_out, size):
    tx, ty = numba.cuda.grid(2)

    value = 0.0
    radius = 16
    num = (radius + 1) * (radius + 1)

    for dy in range(-radius, radius + 1):
        for dx in range(-radius, radius + 1):
            x = tx + dx
            y = ty + dy
            value += get_pixel(img_in, x, y, size) * (1.0 / num)

    img_out[ty][tx] = value


size = 256
tpb = (16, 16)
threads = (size, size)
blocks = (threads[0]//tpb[0], threads[1]//tpb[1])

print("CUDA available: {}".format(numba.cuda.is_available()))

img = np.random.normal(0, 1.0, size*size).astype(np.float32).reshape(threads)
#PIL.Image.fromarray(img, mode="L").show()

gpu_in = numba.cuda.to_device(img)
gpu_out = numba.cuda.device_array_like(img)

gaussian_blur[blocks, tpb](gpu_in, gpu_out, size)
numba.cuda.synchronize()
img = gpu_out.copy_to_host()
#PIL.Image.fromarray(img, mode="L").show()

print(next(iter(gaussian_blur.inspect_sass().items()))[1])
