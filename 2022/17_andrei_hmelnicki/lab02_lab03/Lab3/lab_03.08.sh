#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "8. Нумерация каждой стоки в файле filename. Используя отступ для отделения номера от строки"
	echo 
	echo
fi
	sed = file.txt | sed 'N;s/\n/\t/' 