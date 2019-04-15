#!/bin/bash

tar xvzf ./sd_card.tgz
sudo rm -rf /lib/firmware
sudo rm -rf /lib/modules
sudo rm -rf /boot/overlays
sudo cp -rf ./sd_card/lib/firmware/ /lib
sudo cp -rf ./sd_card/lib/modules/ /lib
sudo cp -rf ./sd_card/boot/* /boot
sync
sync
sync
