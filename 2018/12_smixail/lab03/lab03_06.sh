#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "6. Вставить строку с символом /* после каждой строки соответствующей регулярному выражению \"begin\""
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

cat $1 | sed -e 's/^begin$/begin\n\/\*/g'

exit 0
