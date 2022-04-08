#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "19. Сравнить две числовые переменные и вывести сообщение yes или no, используя команду [."
echo
echo
echo
fi
echo "Введите первое число"
read a
echo "Введите второе число"
read b
if [ "$a" -eq "$b" ]
then
echo
echo "yes"
else
echo
echo "no"
fi