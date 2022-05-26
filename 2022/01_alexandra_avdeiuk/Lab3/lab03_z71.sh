#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "71. Удвлить каждую вторую строку в файле"
echo
echo
fi

cat $1 | sed -i 'n;d' file71.txt
exit 0
