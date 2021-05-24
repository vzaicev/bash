#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "43. Печатать последнюю строку файла"
	echo
	echo
fi
	sed -e '$!{h;d;}' -e x file.txt