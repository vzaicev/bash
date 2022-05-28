#!/bin/bash

if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "13. Сравнить две числовые переменные и если первая больше,"
echo "то вывести сообщение об этом, используя команду test"
echo
echo
fi

echo "Введите первое число: "
read num1
echo "Введите второе число: "
read num2

re='^-?[0-9]+$'
if ! [[ $num1 =~ $re ]] || ! [[ $num2 =~ $re ]];
then
  echo "Ошибка: это не число!" >&2;
  exit 1
fi

if test $num1 -gt $num2;then
  echo "Первое число больше второго"
fi
