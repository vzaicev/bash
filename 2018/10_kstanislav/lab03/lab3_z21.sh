#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "21. Поиск и замена 'Hi\bro' на 'Yo\bro' (замена первых 4рех совпадений в строке)."
echo
echo
fi
cat $1 | sed -e 's/Hi\\bro/Yo\\bro/4'
exit 0
