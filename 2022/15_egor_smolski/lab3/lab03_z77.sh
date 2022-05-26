#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "77.Удалить все пустые строки в конце файла"
	echo 
	echo
fi
sed -e :a -e '/^\n*$/N;/\n$/ba' file.txt