#!/bin/bash

mkdir -p ./sd_card/lib
mkdir -p ./sd_card/boot
mkdir -p ./sd_card/boot/overlays
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- modules_install INSTALL_MOD_PATH=./sd_card
scripts/mkknlimg arch/arm/boot/zImage ./sd_card/boot/kernel7.img
cp arch/arm/boot/dts/*.dtb ./sd_card/boot/
cp arch/arm/boot/dts/overlays/*.dtb* ./sd_card/boot/overlays
tar cvzf sd_card.tgz ./sd_card/
