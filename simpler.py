from numba import cuda

cuda.jit('void()', lineinfo=True)(lambda: None)
