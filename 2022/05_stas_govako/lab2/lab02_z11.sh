#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "11. Написать скрипт, который выводит 10 сообщений "в первом потоке прошла 1 сек" с периодичностью 1с, и 5 сообщений с периодичностью 2 сек (использовать команду sleep n).."
echo
echo
fi
function fun1
{
for ((a=0; a < 10; a++))
do
echo "в первом потоке прошла 1 сек"
sleep 1
done
}
function fun2
{
for ((a=0; a < 5; a++))
do
echo "во втором потоке прошло 2 сек"
sleep 2
done
}
fun1 & fun2