#!/bin/bash

#ln -s $TOOLCHAINS/ASOP_platform_gcc_linux-x86/bin/aarch64-linux-android-as $TOOLCHAINS/bin/as

#make -j$(nproc) O=out CC=clang CLANG_TRIPLE=aarch64-linux-gnu- 2>&1 | tee out/kernel.log
make O=out CC="clang -Wno-error -Wno-address-of-packed-member -Wno-unknown-attributes" CLANG_TRIPLE=aarch64-linux-gnu- 2>&1 | tee out/kernel.log
make -j$(nproc) O=out CC="clang -Wno-error -Wno-address-of-packed-member -Wno-unknown-attributes" CLANG_TRIPLE=aarch64-linux-gnu- 2>&1 | tee out/kernel.log

#make --trace -j$(nproc) O=out REAL_CC=${PWD}/modules/llvm-Snapdragon_LLVM_for_Android/prebuilt/linux-x86_64/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- 2>&1 | tee out/kernel.log
#make --trace O=out REAL_CC=${PWD}/modules/llvm-Snapdragon_LLVM_for_Android/prebuilt/linux-x86_64/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- 2>&1 | tee out/kernel.log

#rm $TOOLCHAINS/bin/as
