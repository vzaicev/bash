#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "34. Добавить запятые к строке из чисел, изменяя "1234567" на "1,234,567""
echo
echo
fi

echo "Результат после применения sed:"
cat text.txt |sed -e :a -e 's/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/;ta' 
exit 0