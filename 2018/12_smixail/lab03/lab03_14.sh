#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "14. Удалить все пробелы и символы табуляции в начале и конце каждой строки файла"
    echo
    echo
    continue
  fi
  set -- "$@" "$argument"
done

if [ $# -ne 1 ]; then
  echo "Неверное количество аргументов (необходимо: 1)"
  exit 1
fi

cat $1 | sed -e 's/\s*\([^[:space:]]\)/\1/' -e 's/\([^[:space:]]\)\s*$/\1/' -e 's/^\s*$//'

exit 0
