#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "15. Сравнить две числовые переменные и вывести сообщение yes или no,"
echo "используя команду test."
echo
echo
fi
if [ "$1" == "-task" ];then
  if test "$2" -eq "$3" ;
  then
  echo "yes"
  else
  echo "no" 
  fi
else
  if test "$1" -eq "$2";
  then
  echo "yes"
  else
  echo "no"
  fi
fi
exit 0