#!/bin/bash
if test $1 == "-task"; then
echo "Задание"
echo "13. Сравнить две числовые переменные и если первая больше, то вывести её используя команду [."
echo
echo
fi

#Код задания
echo -n "Enter value a: "
read a
echo -n "Enter value b: "
read b

if [ $a -gt $b]; then echo "Number a is greater than b"; fi
