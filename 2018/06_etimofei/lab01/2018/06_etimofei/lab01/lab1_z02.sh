#!/bin/bash
  if [ -n "$1" ] && [ "$1" == "-task" ];
  then
    echo "Задание"
    echo "2. Продемонстрировать отличия обработки оператором echo строки"
	echo "с кавычками, \"\", \'\' и без кавычек."
    echo ""
    echo ""
  fi
    hello="kek"
      echo "Без кавычек"
      echo hello
      echo "С одинарными кавычками"
      echo 'hello'
      echo "С двойными кавычками"
      echo "hello"

