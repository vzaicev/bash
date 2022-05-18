#!/bin/bash
if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "30. Перевернуть каждую слово в файле задом наперед"
    echo ""
    echo ""
    break
fi

cat filename.txt | sed '/\n/!G;s/\(.\)\(.*\n\)/&\2\1/;//D;s/.//'