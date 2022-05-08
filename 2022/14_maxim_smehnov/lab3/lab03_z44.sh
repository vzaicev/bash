#!/bin/bash

  if [ -n "$1" ] && [ "$1" == "-task" ];
  then
    echo "Задание"
    echo "44. Печатать предпоследнюю строку в файле"
    echo ""
    echo ""
    
  fi
echo "Результат после применения sed:"

cat text.txt | sed -e '$!{h;d;}' -e x
exit 0