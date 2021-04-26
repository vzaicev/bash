#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
        echo "Задание"
        echo "1. Сравнить две числовые переменные и вывести сообщение yes или no, используя команду test"
        echo
        echo
fi
# Код скрипта
echo -n "Введите значения переменных "
read a
read b
if test "$a" -eq "$b"
then
	echo "yes"	
else
	echo "no"
fi
echo "Конец"


