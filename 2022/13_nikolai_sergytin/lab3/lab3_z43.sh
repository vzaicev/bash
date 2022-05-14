#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "43. Печатать последнюю строку файла"
	echo
	echo
fi
cat textfile.txt |sed -e '$!{h;d;}'