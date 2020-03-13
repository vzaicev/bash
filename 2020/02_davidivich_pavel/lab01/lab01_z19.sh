#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "19. Сравнить две числовые переменные и вывести сообщение yes или no, используя команду [."
echo
echo
echo
fi
echo "Input number a"
read a
if expr "$a" : '-\?[0-9]\+$' >/dev/null
then
echo "String is a valid integer."
else
echo "ERROR!! a is not a valid integer."
exit 0
fi
echo "Input number b"
read b
if expr "$b" : '-\?[0-9]\+$' >/dev/null
then
echo "String is a valid integer."
else
echo "ERROR!! b is not a valid integer."
exit 0
fi
if [ "$a" -eq "$b" ]
then
echo
echo "Yes"
else
echo
echo "NO"
fi