#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "19. Сравнить две числовые переменные и вывести сообщение yes или no, используя команду [."
echo
echo
fi
string1=''
string2=''
echo "Input  string1"
read string1
echo "Input  string2"
read string2
if [ "$string1" = "$string2" ]
then
echo
echo "Yes"
else
echo
echo "NO"
fi