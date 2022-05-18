#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "60. Печатать строку под номером 52"
echo
echo
fi

sed -n '52p' filename.txt