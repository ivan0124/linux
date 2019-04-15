#!/bin/bash

patch -p1 < RPi_3_SPI_TPM_Driver_And_Automatic_Driver_Load.patch
#config.gz is from RPi3.
#In RPi3, please type instruction "$sudo modprobe configs" and get file from "/proc/config.gz"
#$scp pi@10.1.112.15:/proc/config.gz ./
zcat ./config.gz > .config
