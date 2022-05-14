#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "53. Печатать абзац если он содержит AAA (пустая строка разделяет абзацы)"
	echo
	echo
fi


cat textfile.txt |  sed -e '/./{H;$!d;}' -e 'x;/AAA/!d;'

