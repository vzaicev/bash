#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "41. Печатать последние 20 строк файла"
	echo  
	echo
fi
	sed -e :a -e '$q;N;21,$D;ba' file.txt