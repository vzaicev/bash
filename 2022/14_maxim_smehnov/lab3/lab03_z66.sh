#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "66. Печатать только дубликаты строк"
echo
echo
fi

echo "Результат после применения sed:"
cat text.txt |sed '$!N; s/^\(.*\)\n\1$/\1/; t; D' 
exit 0