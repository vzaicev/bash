#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "38. Печатать первые 10 линий файла"
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

cat $1 | sed -n 1,10p

exit 0
© 2022 GitHub, Inc.
Terms
