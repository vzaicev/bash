#!/bin/bash

  if [ -n "$1" ] && [ "$1" == "-task" ];
  then
    echo "Задание"
    echo "54. Печатать абзац если он содержит AAA, BBB и CCC (в любой последовательности) (символ табуляции вначале строки абзацы)"
    echo
    echo
    
  fi


echo "Результат после применения sed:"

cat text.txt | sed -n '/^\t/{:s;/.*AAA.*/!be;/.*BBB.*/!be;/.*CCC.*/!be;:r;{p};n;/^\t/!br;bs;:e;n;bs;};'

exit 0