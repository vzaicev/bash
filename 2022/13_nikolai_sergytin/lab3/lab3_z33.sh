#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "33. Если линия начинается с знака \"==\", то присоединить ее к предыдущей линии и заменить \"==\" пробелом"
	echo
	echo
fi
cat textfile.txt |sed -e ':a;N;$!ba;s/\n==/ /g'
exit 0