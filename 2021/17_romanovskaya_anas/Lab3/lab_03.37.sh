#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "37. Добавить пустую строку через каждые 5 строк (после строк 5, 10, 15, 20, и т.д.)"
	echo 
	echo
fi
	sed 'n;n;n;n;G;' file.txt