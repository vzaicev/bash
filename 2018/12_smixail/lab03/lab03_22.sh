#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "22. Поиск и замена "Hi\bro" на "Yo\bro" (замена ВСЕХ совпадений в строке)"
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

cat $1 | sed -e 's/Hi\\bro/Yo\\bro/g'

exit 0
