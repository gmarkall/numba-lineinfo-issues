import os
import subprocess

from numba.cuda.cudadrv import nvvm
from ptxcompiler import compile_ptx

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

with open('ir3.ll', 'r') as f:
    ir3 = f.read()

ptx0 = nvvm.llvm_to_ptx(ir0, **opts)
ptx1 = nvvm.llvm_to_ptx(ir1, **opts)
ptx2 = nvvm.llvm_to_ptx(ir2, **opts)
ptx3 = nvvm.llvm_to_ptx(ir3, **opts)

print(ptx3.decode())

options = [
    '--gpu-name=sm_75'
]

compile_input = ptx3.strip(b'\x00').decode()

compiled_program, info_log = compile_ptx(compile_input, options)
print("Info log:")
print(info_log)
print("Program:")

os.remove('program.elf')

with open('program.elf', 'wb') as f:
    f.write(compiled_program)

subprocess.run(['cuobjdump', '--dump-sass', 'program.elf'])
