#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "1. Двойное пространство между строками между каждой второй строкой"
	echo 
	echo
fi
	sed '/^$/n;G' file.txt