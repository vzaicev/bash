#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "18. Сравнить две строковые переменные и если первая больше,"
	echo "то вывести сообщение об этом, используя команду ["
	echo 
	echo
fi
	echo "Enter first string"
	read str1
	echo "Enter second string"
	read str2
if [ "$str1" \> "$str2" ]
then
	echo "First string is greater"
fi
