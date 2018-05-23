#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "53. Печатать абзац если он содержит AAA (пустая строка разделяет абзацы)."
echo
echo
fi
cat $1 | sed -e '/./{H;$!d;}' -e 'x;G;/AAA/!d;'
exit 0