#!/bin/bash

rm -rd out
mkdir out
#make O=out REAL_CC=${PWD}/modules/llvm-Snapdragon_LLVM_for_Android/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- cas_defconfig
make O=out CC=clang CLANG_TRIPLE=aarch64-linux-gnu- cas_defconfig
