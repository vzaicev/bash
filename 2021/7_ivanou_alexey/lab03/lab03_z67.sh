#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "67. Удалить первые 10 строк в файле и одну последнюю"
	echo 
	echo
fi
	sed '1,10d'
    sed '$d'	file.txt