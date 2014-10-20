#!/bin/sh

#for ((i=10; i<=10; i++))
#do
# msg=`telnet 202.120.40.100 ${i}27 | grep refused 2>&1`
# echo $msg
#
# if [ "$msg" =  "" ]; then
#  echo ${i}27 is alive
# fi
#done

msg=`telnet 202.120.40.100 8888 | grep refused 2>&1`
echo try 8888: $msg
