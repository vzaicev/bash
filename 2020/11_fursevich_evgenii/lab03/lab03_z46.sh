#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "46. Печатать только те строки, которые НЕ совпадают с регулярным выражением"
    echo
    echo
    continue
  fi
  set -- "$@" "$argument"
done

if [ $# -ne 2 ]; then
  echo "Неверное количество аргументов (необходимо: 2)"
  exit 1
fi

cat $1 | sed -n "/$2/!p" 

exit 0