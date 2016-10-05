#!/bin/bash
# sdhi device driver autotest shell-script

set -a
#set -x

echo "\n*************************SUSPEND INSIDE COPY DATA***********************\n"

$CMD_SSH <<ENDSSH

	eval $PREPARE_SUSPEND

	sleep 1

	eval $CMD_SUSPEND &

ENDSSH

sleep 5

eval $CMD_RESUME

$CMD_SSH <<ENDSSH

	exec $SHELL_SOURCE_CODE/$DRIVER_PATH/exec_sdhi.sh 009_sdhi_write_ram_to_sdhi0_100MB.sh
	
ENDSSH

echo "\n************************************************************************\n"
