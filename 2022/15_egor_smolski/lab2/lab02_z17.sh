#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "17. Написать скрипт, который выводит только информацию о размере свободной оперативной памяти в системе каждую секунду."
echo " "
echo " "
fi
for ((i=0; i<15; i++))
	do
		cat /proc/meminfo | grep MemFree
		sleep 1
	done 
exit 0;