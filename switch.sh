#!/bin/bash

if [ x$1 == x ];then
 echo "Switch to Default Domain 0"
 echo 0 > /sys/kernel/vgt/control/foreground_vm
else
 echo Switch to Domain $1
 echo $1 > /sys/kernel/vgt/control/foreground_vm
fi
