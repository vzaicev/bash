#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "13. Сравнить две числовые переменные и если первая больше,"
    echo "то вывести сообщение об этом, используя команду test"
    echo ""
    break
  fi
  ((i++))
done

echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

re='^[0-9]+$'
if ! [[ $num1 =~ $re ]] || ! [[ $num2 =~ $re ]];
then
  echo "error: Not a number" >&2;
  exit 1
fi

if test $num1 -gt $num2
then
  echo "First number is greater than second"
fi
