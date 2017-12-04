#/bin/bash
PATH=$PATH:/mnt/sdb/repo-mx/fsl-release-bsp/build-x11/tmp/sysroots/i686-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.3.0
export ARCH=arm
export CROSS_COMPILE=arm-poky-linux-gnueabi-
#export CROSS_COMPILE=arm-poky-linux-gnueabi-
#export O=/mnt/sdb/mx6q-201612/kernel_imx/OUT
#make imx_v6_v7_defconfig
#make imx_v7_android_defconfig
#make zImage -j8 KCFLAGS=-mno-android
#cp config_linux .config
#cp config_android .config
#make dtbs
make zImage -j8
mkdir -p ./YoctoOUT
cp arch/arm/boot/dts/e9-sabresd.dtb ./YoctoOUT
cp arch/arm/boot/dts/imx6q-sabresd.dtb ./YoctoOUT
#cp arch/arm/boot/zImage /home/tftp-file/k-imx
cp arch/arm/boot/zImage ./YoctoOUT
#cp arch/arm/boot/zImage /home/shared/
ls -lh arch/arm/boot/zImage
#cp arch/arm/boot/zImage ./OUT
