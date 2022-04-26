#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
	echo "Задание 15. Сравнить две числовые переменные и вывести сообщение yes или no, используя команду test"
	echo
fi
echo "Yes - переменные равны"
echo -n "Введите значения переменных"
read a
read b
if test "$a" -eq "$b"
then
	echo "yes"
else
	echo "no"
fi



		
