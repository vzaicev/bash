#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "16. Сравнить две строковые переменные и вывести сообщение yes или no, используя команду test"
    echo
    echo
    continue
  fi
  set -- "$@" "$argument"
done

if [ $# -ne 2 ]; then
  echo "Неверное количество параметров (необходимо: 2)" 
  exit 1
fi

if test $1 == $2; then
  echo "yes"
else
  echo "no"
fi

exit 0
