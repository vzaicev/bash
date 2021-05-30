#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "75. Оставить последовательность пустых строк не более двух одновременно"
	echo
	echo
fi
	sed '/^$/N;/\n$/N;//D' file.txt