#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "61. Начиная с 3-ей строки печатать каждую седьмую строку в файле."
echo
echo
fi
echo "Введите имя файла в текущей дериктории:"
read file
sed -n '3,${p;n;n;n;n;n;n;}' $file
exit 0