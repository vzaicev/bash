#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "11. Написать скрипт, который выводит 10 сообщений "в первом потоке прошла 1 сек" с периодичностью 1 с, и 5 сообщений с периодичностью 2 сек (использовать команду sleep n).."
echo
echo
fi
function f1
{
for ((i=0; i < 10; i++)) 
do 
echo "в первом потоке прошла 1 сек"
sleep 1
done
echo
echo
}
function f2
{
for ((i=0; i < 5; i++))
do 
echo "во втором потоке прошо 2 сек"
sleep 2
done 
}
f1 & f2
exit 0