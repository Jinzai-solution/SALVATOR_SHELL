#!/bin/sh
# sound device driver autotest shell-script

set -e
#set -x

echo "\n*********************CHECK INTERRUPT AFTER START THE BOARD**************\n"

exec $(dirname $0)/../common/proc-interrupts-multiple.sh "$SOUND_INTERRUPT"

echo "\n************************************************************************\n"
