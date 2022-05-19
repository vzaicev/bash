#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "45. Печатать только те строки, которые совпадают с регулярным выражением"
	echo 
	echo
fi
sed -n '/regexp/p' file.txt