#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "62. Печатать часть файла между двумя регулярными выражениями (включительно)"
    echo
    echo
    continue
  fi
  set -- "$@" "$argument"
done

if [ $# -ne 3 ]; then
  echo "Неверное количество аргументов (необходимо: 3)"
  exit 1
fi

cat $1 | sed -n "{:a;/$2/!{n;ba};s/^.*\($2.*\)$/\1/;:r;/$3/!{p;n;br};s/^\(.*$3\).*$/\1/;p;n;ba}"

exit 0
