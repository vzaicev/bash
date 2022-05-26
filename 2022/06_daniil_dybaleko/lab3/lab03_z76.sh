#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "76. Удалить все пустые строки в начале файла "
echo
echo
fi

cat text.txt |sed -n '/[a-zA-Z]/,/[a-zA-Z]/p'
