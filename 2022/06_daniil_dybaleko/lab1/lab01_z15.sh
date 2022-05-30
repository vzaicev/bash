#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ]; then
echo "Задание"
echo "15. Сравнить две числовые переменные и вывести сообщение yes или no, используя команду test."
echo
echo
fi
if [ $# -ne 2 ]; then
  echo "Неверное количество параметров" 
  exit 1
fi

if test $1 -eq $2; then
  echo "yes"
else
  echo "no"
fi
