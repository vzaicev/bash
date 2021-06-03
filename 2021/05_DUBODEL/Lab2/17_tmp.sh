#!/bin/bash

echo "17. Написать скрипт, который выводит только информацию о размере свободной оперативной памяти в системе каждую секунду."
echo " "
echo " "

for ((i=0; i<15; i++))
	do
		cat /proc/meminfo | grep MemFree
		sleep 1
	done 