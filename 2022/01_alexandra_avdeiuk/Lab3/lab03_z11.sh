#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "11. Подсчет строк (эмуляция "wc -l") в файле содержащих выражение "begin""
echo
echo
fi

touch file
sed = file11.txt | sed -n '/begin/w file' file11.txt
sed -n '$=' file
rm file
