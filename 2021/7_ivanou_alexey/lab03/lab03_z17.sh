#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "17. Расположить весь текст по правому краю столбца шириной в 80 символов"
	echo 
	echo
fi
	sed -e :a -e 's/^.\{1,79\}$/ &/;ta' file.txt