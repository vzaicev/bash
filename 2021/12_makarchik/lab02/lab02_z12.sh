#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "12. Написать скрипт, который выводит 1000 сообщений, которые представляют собой значения счетчика с периодичностью 1 сек. По сигналу прерывания ctrl + c вывести сообщение о том, сколько осталось до конца выполнения, и остановить скрипт."
    echo
    echo
    continue
  fi
  set -- "$@" "$argument"
done

if [ $# -ne 0 ]; then
  echo "Неверное количество аргументов (необходимо: 0)"
  exit 1
fi

messages_left=1000

trap 'echo "Messages left: $messages_left"; exit 2;' INT

for index in `seq 1 1000`
do
  echo "Message #$index"
  messages_left=`expr $messages_left - 1`
  sleep 1s
done

exit 0
