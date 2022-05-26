#!/bin/bash

if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "7. Напишите скрипт, который скачивает заглавную страницу https://www.onliner.by/"
echo "или другого сайта, сохраняет ее в файл. После по этому файлу формирует список"
echo "уникальных русских слов (использовать wget)."
echo
echo
fi

wget https://www.onliner.by/ &>/dev/null
ourpage=$(cat index.html)
echo "$ourpage" | sed -e 's/\s+/ /g' -e 's/\(.*\)/\L\1/g' -e 's/[^А-яуЕёЁ ]//g' | tr ' ' '\n' | sort | uniq

