#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
    echo "Задание"
    echo "14. Удалить все пробелы и символы табуляции в начале и конце каждой строки файла"
    echo
    echo
    
fi

echo "Результат после применения sed:"

cat text.txt | sed -e 's/\s*\([^[:space:]]\)/\1/' -e 's/\([^[:space:]]\)\s*$/\1/' -e 's/^\s*$//'

exit 0