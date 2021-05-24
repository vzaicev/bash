#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "7. Вставить строку с символом */ после каждой строки соответствующей регулярному выражению "end.""
echo
echo
fi
cat $1 | sed -e 's/^end$/end\n\*\//g'
exit 0