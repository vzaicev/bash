#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "10. Нумерация каждой строки в файле filename,"
echo "с выводом номера только для не пустых строк и каждой с номером кратным 3"
fi
sed '/./=' filename.txt | sed '/./N; s/\n/ /' | sed -n '3~3p' filename.txt
