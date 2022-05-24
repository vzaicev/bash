#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "21. Поиск и замена "Hi\bro" на "Yo\bro" (замена только первых 4рех совпадения в строке)"
echo
echo
fi

sed 's/Hi\\bro/Yo\\bro/;s/Hi\\bro/Yo\\bro/;s/Hi\\bro/Yo\\bro/;s/Hi\\bro/Yo\\bro/' file.txt