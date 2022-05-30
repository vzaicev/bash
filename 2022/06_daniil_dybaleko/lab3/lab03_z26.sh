#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "26. Замена "Hi\bro" на "Yo\bro" ИСКЛЮЧАЯ строки содержащие "Black""
echo
echo
fi
sed '/Black/!s/Hi\\bro/Yo\\bro/g' text.txt