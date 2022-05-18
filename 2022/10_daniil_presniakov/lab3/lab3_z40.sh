#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "40. Печатать первую строку файла"
echo
echo
fi
sed q filename.txt