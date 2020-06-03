#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "17. Написать скрипт, который выводит только информацию о размере"
	echo "свободной оперативной памяти в системе каждую секунду."
	echo
	echo
else
	for ((i=0; i<15; i++))
	do
		cat /proc/meminfo | grep MemFree
		sleep 1
	done
fi