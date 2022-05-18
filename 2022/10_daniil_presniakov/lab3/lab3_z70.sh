#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "70.  Удалить последние 4 строки файла"
echo
echo
fi
sed -n -e :a -e '1,4!{P;N;D;};N;ba' filename.txt