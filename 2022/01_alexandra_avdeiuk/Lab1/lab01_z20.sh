#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "20. Сравнить две строковые переменные и вывести сообщение yes или no, используя команду ["
echo
echo
fi

string1=''
string2=''
echo "Введите первую строку"
read string1
echo "Введите вторую строку"
read string2
if [ $string1 = $string2 ]
then
	echo "yes"
else
	echo "no"
fi
