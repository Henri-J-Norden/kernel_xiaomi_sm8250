#!/bin/bash

NAME="UPDATE-AnyKernel3.zip"

cp $OUT/arch/arm64/boot/Image  $TOOLCHAINS/AnyKernel3/kernel
cp $OUT/arch/arm64/boot/dtbo.img  $TOOLCHAINS/AnyKernel3/dtbo.img
cp $OUT/arch/arm64/boot/dts/vendor/qcom/kona-v2.1.dtb  $TOOLCHAINS/AnyKernel3/dtb

cd $TOOLCHAINS/AnyKernel3
zip -r9 $NAME * -x .git README.md *placeholder
cd -

echo
echo "----- Kernel update.zip ready: -----"
echo "$TOOLCHAINS/AnyKernel3/$NAME"
echo


#adb push $TOOLCHAINS/AnyKernel3/$NAME /sdcard/

#adb reboot fastboot
#fastboot update $TOOLCHAINS/AnyKernel3/$NAME
#fastboot reboot

