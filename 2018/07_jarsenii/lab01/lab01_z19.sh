#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "19. Сравнить две числовые переменные и вывести сообщение yes или no, используя команду [."
echo
echo
fi
declare -i a
declare -i b
echo "Input number a"
read a
echo "Input number b"
read b
if [ "$a" -eq "$b" ]
then
echo "Yes"
else
echo "NO"
fi
