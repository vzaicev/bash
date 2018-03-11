#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "13. Сравнить две числовые переменные и если первая больше, то вывести сообщение об этом, используя команду test"
    echo ""
    echo ""
    break
  fi
  ((i++))
done

declare -i num1
declare -i num2
read num1
read num2
if test $num1 -gt $num2
then
  echo "First number is greater than second"
fi