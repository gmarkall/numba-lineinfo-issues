from numba.cuda.cudadrv import nvvm

opts = {
    'debug': 0,
    'lineinfo': True,
    'fastmath': False,
    'opt': 3,
    'arch': 'compute_75'}

with open('ir0.ll', 'r') as f:
    ir0 = f.read()

with open('ir1.ll', 'r') as f:
    ir1 = f.read()

with open('ir2.ll', 'r') as f:
    ir2 = f.read()

ptx0 = nvvm.llvm_to_ptx(ir0, **opts)
ptx1 = nvvm.llvm_to_ptx(ir1, **opts)
ptx2 = nvvm.llvm_to_ptx(ir2, **opts)

print(ptx2.decode())
