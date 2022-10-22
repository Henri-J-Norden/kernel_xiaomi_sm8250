#!/bin/bash

# --- Compiler vars ---
export ARCH=arm64
export SUBARCH=arm64
export DTC_EXT=dtc
export LLVM=1
export LLVM_IAS=1

# --- Paths ---
export OUT=${PWD}/out
export TOOLCHAINS=${PWD}/toolchains

export PATH=$TOOLCHAINS/clang/bin:$PATH

# - Other binaries -
export PATH=$TOOLCHAINS/bin:$PATH
rm -rd $TOOLCHAINS/bin
mkdir $TOOLCHAINS/bin

ln -s /usr/bin/python2 $TOOLCHAINS/bin/python
ln -s $TOOLCHAINS/clang/bin/ld.lld $TOOLCHAINS/bin/llvm-ld
#ln -s $TOOLCHAINS/clang/bin/llvm-as $TOOLCHAINS/bin/as

# - Compiler -
export CROSS_COMPILE=llvm-
#export LD=${PWD}/toolchains/clang/bin/ld.lld
#export CLANG=${PWD}/toolchains/clang/bin/clang

#export CROSS_COMPILE=${PWD}/toolchains/llvm-Snapdragon_LLVM_for_Android/bin/llvm-
#export LD=${PWD}/toolchains/llvm-Snapdragon_LLVM_for_Android/bin/ld.qcld
#export CLANG=${PWD}/toolchains/llvm-Snapdragon_LLVM_for_Android/bin/clang
