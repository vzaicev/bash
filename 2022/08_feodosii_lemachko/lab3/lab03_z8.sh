#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "8. Нумерация каждой 4 стhоки в файле filename. Используя отступ для отделения номера от строки"
	echo 
	echo
fi
	sed = file.txt | sed 'N;s/\n/\t/' 