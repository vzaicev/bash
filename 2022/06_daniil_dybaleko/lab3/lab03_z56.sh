#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "56. Печатать строки длиной равной или большей 16 символов."
echo
echo
fi
cat text.txt | sed -n '/^.\{16\}/p'