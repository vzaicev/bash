#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "7. Напишите скрипт, который скачивает заглавную страницу https://www.onliner.by/ или другого сайта сохраняет ее в файл. После по этому файлу формирует список уникальных русских слов (использовать wget)."
echo
echo
fi
wget https://www.onliner.by/ &>/dev/null
ourpage=$(cat index.html)
echo "$ourpage" | sed  -e 's/\s+/ /g' -e 's/\(.*\)/\L\1/g' -e 's/[^А-яеЕёЁ ]//g'  | tr ' ' '\n' | sort | uniq
exit 0