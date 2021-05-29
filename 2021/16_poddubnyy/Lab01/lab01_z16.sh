#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "Сравнить две строковые переменные и вывести сообщение yes или no, используя команду test."
echo
echo
fi
s1="hi"
s2="hi"
if test "$s1" == "$s2";
then echo "match"; 
else echo "unmatch";
fi
