#!/bin/sh
# sdhi device driver autotest shell-script

set -a
#set -x

echo "\n********************WRITE SPEED SDHI TEST**********************\n"

$(dirname $0)/sdhi_sdx_write_speed.sh $SD2_DIR $DEVICE_SD1

echo "\n***************************************************************\n"