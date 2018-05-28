#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "13. Сравнить две числовые переменные и если первая больше, то вывести сообщение об этом, используя команду test."
echo
echo
fi
read a
read b
echo "Sravnenie a and b"
if   test "$a" -gt "$b"; then
echo "True"
else
echo "  "
fi