#!/bin/sh
brctl addbr xenbr0
dhclient -r
ifconfig eth1 0.0.0.0 down
brctl addif xenbr0 eth1
ifconfig eth1 up
dhclient xenbr0
echo "Done"
ifconfig | grep xenbr -A6
