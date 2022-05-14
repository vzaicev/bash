#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "53. Печатать абзац если он содержит AAA (пустая строка разделяет абзацы)"
	echo
	echo
fi

if [ $# -ne 1 ]; then
  echo "Неверное количество аргументов (необходимо: 1)"
  exit 1
fi

cat $1 | sed -e '/./{H;$!d;}' -e 'x;/AAA/b' -e d
