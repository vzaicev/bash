#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "20. Сравнить две строковые переменные и вывести сообщение yes или no, используя команду [ "
echo
echo
fi
echo "Введите значения строковых переменных "
read a
read b
if [ "$a" == "$b" ]
then
echo "yes"
else
echo "no"
fi