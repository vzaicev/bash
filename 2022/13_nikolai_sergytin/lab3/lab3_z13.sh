#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "13. Удалить все пробелы и символы табуляции в конце каждой строки файла"
	echo
	echo
fi



cat textfile.txt | sed -e 's/\([^[:space:]]\)\s*$/\1/' -e 's/^\s*$//'