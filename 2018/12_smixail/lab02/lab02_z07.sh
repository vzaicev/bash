#!/bin/bash

for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "7. Напишите скрипт, который скачивает заглавную страницу https://www.onliner.by/ или другого сайта и сохраняет ее в файл. После по этому файлу формирует список уникальных русских слов (использовать wget)."
    echo
    echo
    continue
  fi
  set -- "$@" "$argument"
done

if [ $# -ne 0 ]; then
  echo "Неверное количество аргументов (необходимо: 0)"
  exit 1
fi

rm index.html &>/dev/null
wget https://onliner.by/ &>/dev/null
page=$(cat index.html)
rm index.html &>/dev/null

echo "$page" | sed -e 's/[^А-яеЕёЁ ]//g' -e 's/\(.*\)/\L\1/g' -e 's/\s+/ /g' | tr ' ' '\n' | sort | uniq

exit 0
