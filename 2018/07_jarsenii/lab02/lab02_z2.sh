#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "2. Написать функцию вычисления факториала заданного числа. Число передается в скрипт как параметр."
echo
echo
else
if expr "$1" : '-\?[0-999]\+$' >/dev/null
then
  echo "Input is correct."
else
  echo "ERROR!! Input is not a valid integer."
  exit 0
fi
function factorial
{
if [ $1 -eq 1 ]
then
echo 1
else
local temp=$(( $1 - 1 ))
local result=$(factorial $temp)
echo $(( $result * $1 ))
fi
}
result=$(factorial $1)
echo "The factorial of $1 is: $result"
fi