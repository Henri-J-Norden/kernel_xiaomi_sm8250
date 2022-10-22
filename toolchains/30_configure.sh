#!/bin/bash

rm -rd out
mkdir out
make O=$OUT CC=clang CLANG_TRIPLE=aarch64-linux-gnu- cas_defconfig
