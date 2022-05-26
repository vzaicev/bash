#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "6. Создайте функцию, в которую передается исходный код на языке C\\C++, состоящий из более 40 строк. Код передается из файла. Функция обрабатывает текст и выводит количество пар открывающих и закрывающих скобок {}"
echo
echo
fi
function myf
{
text=$(cat "Code.cpp")
open_braces=0
pairs=0

while read -n1 symbol; do
  if [ "$symbol" == '{' ]; then
    open_braces=`expr $open_braces + 1`
    continue
  fi
  if [ "$symbol" == '}' ]; then
    if [ $open_braces -gt 0 ]; then
      open_braces=`expr $open_braces - 1`
      pairs=`expr $pairs + 1`
    fi
    continue
  fi
done << block
  "$text"
block
echo "Количество пар: $pairs"
exit 0
}
myf