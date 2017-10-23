#!/bin/bash  

echo "Building bootloader for AUS_HW_V10"
sleep 2
make all
dfu-util -d 0483:df11 -c 1 -i 0 -a 0 -s 0x08000000 -D build_aus_v10_bl/aus_v10_bl.bin
sleep 2
echo "Success!"