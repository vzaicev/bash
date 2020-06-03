#!/bin/bash
if [ -n $1 ] && [ "$1" == "-task" ];then
	echo "Задание"
	echo "12. Написать скрипт, который выводит 1000 сообщений, которые представляют собой значения счетчика с переодичностью 1 сек. По сигналу прерывания ctrl + c вывести сообщение о том, сколько осталось до конца выполнения, и остановить скрипт."
	echo
fi

messages_left=1000;
trap 'echo "Messages left: $messages_left"; exit 2;' INT

for i in `seq 1 1000`
do
	echo "Message #$i"
	messages_left=`expr $messages_left - 1`
	sleep 1s
done

exit 0
