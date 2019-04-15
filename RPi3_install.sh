#!/bin/bash

tar xvzf ./sd_card.tgz
sudo rm -rf /lib/firmware
sudo rm -rf /lib/modules
sudo rm -rf /boot/overlays
echo "remove /lib/firmware /lib/modules /boot/overlays"
sudo cp -rf ./sd_card/lib/firmware/ /lib
echo "cp -rf ./sd_card/lib/firmware/ /lib done"
sudo cp -rf ./sd_card/lib/modules/ /lib
echo "cp -rf ./sd_card/lib/modules/ lib done"
sudo cp -rf ./sd_card/boot/* /boot
echo "cp -rf ./sd_card/boot/* /boot done"
sync
sync
sync
echo "sync and install done"
