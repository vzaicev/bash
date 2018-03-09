#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "14. Сравнить две строковые переменные и если первая больше, "
echo "то вывести сообщение об этом, используя команду test."
echo
echo
fi
if [ "$1" == "-task" ];then
  if test $2 \> $3  || test $2 == $3 ;
  then
  echo
  else
  echo "Первая строка больше второй." 
  fi
else
  if test $1 \> $2 || test $1 == $2;
  then
  echo 
  else
  echo "Первая строка больше второй."
  fi
fi
exit 0