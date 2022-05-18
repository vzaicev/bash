#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "50.  Печать строк, совпадающих с регулярными выражениями AAA, BBB и CCC одновременно (в любой последовательности) "
echo
echo
fi

sed '/AAA/!d; /BBB/!d; /CCC/!d' filename.txt