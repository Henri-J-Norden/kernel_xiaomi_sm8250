#!/bin/bash

#make -j$(nproc) O=out CC=clang CLANG_TRIPLE=aarch64-linux-gnu- 2>&1 | tee out/kernel.log
make -j$(nproc) O=$OUT CC="clang -Wno-error -Wno-address-of-packed-member -Wno-unknown-attributes" CLANG_TRIPLE=aarch64-linux-gnu- 2>&1 | tee out/kernel.log
#make O=$OUT CC="clang -Wno-error -Wno-address-of-packed-member -Wno-unknown-attributes" CLANG_TRIPLE=aarch64-linux-gnu- 2>&1 | tee out/kernel.log

