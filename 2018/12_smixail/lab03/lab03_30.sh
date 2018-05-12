#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "30. Перевернуть каждую слово в файле задом наперед"
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

cat $1 | sed -n '{s/\([A-Za-zА-яЁё0-9][A-Za-zА-яЁё0-9]*\)/\1!/g;:a;s/\([A-Za-zА-яЁё0-9]\)\([A-Za-zА-яЁё0-9]*\)!\([A-Za-zА-яЁё0-9]*\)/\2!\1\3/g;/\([A-Za-zА-яЁё0-9]\)\([A-Za-zА-яЁё0-9]*\)!\([A-Za-zА-яЁё0-9]*\)\([A-Za-zА-яЁё0-9]\)/!be;ba;:e;s/!\([A-Za-zА-яЁё0-9]\)/\1/g;p}'

exit 0
