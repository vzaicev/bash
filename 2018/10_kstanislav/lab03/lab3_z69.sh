#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "69. Удалить 3 последние строки файла."
echo
echo
fi
echo "Введите имя файла в текущей дериктории:"
read file
sed -n -e :a -e '1,3!{P;N;D;};N;ba' $file
exit 0