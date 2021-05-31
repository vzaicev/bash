#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "14. Написать скрипт, который выводит столбиком только имена устройств, доступных в системе"
    echo
    echo
    continue
  fi
  set -- "$@" "$argument"
done

if [ $# -ne 0 ]; then
  echo "Неверное количество аргументов (необходимо: 0)"
  exit 1
fi

df -h

exit 0
