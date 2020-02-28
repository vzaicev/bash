#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "14. Сравнить две строковые переменные и если первая больше, то вывести сообщение об этом, используя команду test"
echo 
echo 
fi
echo "Enter first string: "
read str1
echo "Enter second string: "
read str2
if test "$str1" \> "$str2"
then
  echo "First string is greater than second"
fi
