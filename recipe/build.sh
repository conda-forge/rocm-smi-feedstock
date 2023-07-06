#!/bin/bash

# Library
mkdir -p build
cd build
cmake ${CMAKE_ARGS} ..
make
make install 
cd ..

# Python
mkdir -p $PREFIX/bin
cp python_smi_tools/rocm_smi.py $PREFIX/bin/rocm_smi.py
chmod +x $PREFIX/bin/rocm_smi.py
ln -s $PREFIX/bin/rocm_smi.py $PREFIX/bin/rocm-smi
cp python_smi_tools/rsmiBindings.py $SP_DIR/rsmiBindings.py
