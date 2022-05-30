#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "16. Вставить 3 табуляции в начале каждой строки (создать смещение страницы)."
echo
echo
fi
cat text.txt | sed 's/^/\t\t\t/'
