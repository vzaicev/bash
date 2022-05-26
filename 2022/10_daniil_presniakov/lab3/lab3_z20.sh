#!/bin/bash
if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "20. Поиск и замена "Hi\bro" на "Yo\bro" (замена только первого совпадения в строке)"
    echo ""
    echo ""
    break
fi


cat filename.txt | sed 's/Hi\\bro/Yo\\bro/'