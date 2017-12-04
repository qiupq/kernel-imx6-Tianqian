#/bin/bash
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
#export CROSS_COMPILE=arm-poky-linux-gnueabi-
#export O=/mnt/sdb/mx6q-201612/kernel_imx/OUT
#make imx_v6_v7_defconfig
#make imx_v7_android_defconfig
#make zImage -j8 KCFLAGS=-mno-android
#cp config_linux .config
#cp config_android .config
make dtbs

cp arch/arm/boot/dts/imx6q-sabresd.dtb /home/temp/androidBootImg/second_bootloader
#cp arch/arm/boot/dts/imx6q-sabresd.dtb /home/tftp-file
#ls -l /home/tftp-file/imx6q-sabresd.dtb 
#cp arch/arm/boot/zImage ./OUT
#cp arch/arm/boot/zImage /home/shared/
#ls -lh arch/arm/boot/zImage
#cp arch/arm/boot/zImage ./OUT
