#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "7. Вывести количество переданных параметров и последний из них"
    echo
    echo
    continue
  fi
  set -- "$@" "$argument"
done

arguments=("$@")
last_index=`expr $# - 1` 

echo "Количество параметров: " $#
if [ $last_index -gt  -1 ]; then
  echo "Последний параметр:    " ${arguments[$last_index]}
fi

exit 0