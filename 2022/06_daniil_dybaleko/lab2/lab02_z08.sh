#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "8. Напишите скрипт, который скачивает заглавную страницу https://www.onliner.by/ или другого сайта сохраняет ее в файл. После по этому файлу формирует список уникальных русских слов (использовать wget)."
echo
echo
fi
wget http://www.yandex.com/ &>/dev/null
indexpage=$(cat index.html)
echo "$indexpage" | sed  -e 's/\s+/ /g' -e 's/\(.*\)/\L\1/g' -e 's/[^A-Za-z ]//g' -e :a -e 's/<[^>]*>//g;/</N;//ba'  | tr ' ' '\n' | sort | uniq
exit 0