#!/bin/bash

  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "12. Написать скрипт, который выводит 1000 сообщений, которые представляют собой значения счетчика периодичностью 1 с. По сигналу прерывания CTRL+C вывести сообщение о том сколько осталось до конца выполнения и остановить скрипт."
    echo ""
    echo ""
    break
  fi


messagesLeft=1000

trap 'echo "Осталось сообщений: $messagesLeft"; exit 2;' INT

for number in $( seq 1000 )
do
  echo "$number"
  let "messagesLeft--"
  sleep 1s
done