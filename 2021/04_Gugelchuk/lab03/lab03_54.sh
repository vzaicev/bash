#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "54. Печатать абзац если он содержит AAA, BBB и CCC (в любой последовательности) (символ табуляции вначале строки абзацы)"
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

cat $1 | sed -n '/^\t/{:s;/.*AAA.*/!be;/.*BBB.*/!be;/.*CCC.*/!be;:r;{p};n;/^\t/!br;bs;:e;n;bs;};'

exit 0