#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
	echo "Task"
	echo "15. Write a script that displays information about the processor (processor, model name, cpu MHz"
	echo
	echo
fi
#Code
info="`cat /proc/cpuinfo`"

while read -r line; do
echo $line | grep 'processor'
echo $line | grep 'model name'
echo $line | grep 'cpu MHz'
echo $line | grep '^$'
done <<< "$info"

