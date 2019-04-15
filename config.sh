#!/bin/bash

patch -p1 < RPi_3_SPI_TPM_Driver_And_Automatic_Driver_Load.patch
zcat ./config.gz > .config
