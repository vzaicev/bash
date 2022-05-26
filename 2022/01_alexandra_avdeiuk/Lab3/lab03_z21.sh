#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "20. Поиск и замена "Hi\bro" на "Yo\bro" (замена только впервых 4-ч совпадений в строке)"
echo
fi
 
sed -i 's/Hi\\bro/Yo\\bro/;s/Hi\\bro/Yo\\bro/;s/Hi\\bro/Yo\\bro/;s/Hi\\bro/Yo\\bro/' file21.txt
