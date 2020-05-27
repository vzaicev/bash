#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "55. Печатать абзац если он содержит AAA или BBB, или CCC"
echo
echo
fi
cat $1 | sed -e '/./{H;$!d;}' -e 'x;/AAA/!d;/BBB/!d;/CCC/!d'
exit 0