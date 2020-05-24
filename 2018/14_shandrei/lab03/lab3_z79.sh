#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "79. Отсортировать абзацы файла в алфавитном порядке. Абзацы разделены пустой строкой"
echo
echo
fi
cat $1 | sed '/./{H;d;};x;s/\n/={NL}=/g' | sort | sed '1s/={NL}=//;s/={NL}=/\n/g'
exit 0