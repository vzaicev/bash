#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "8. Напишите скрипт, который скачивает заглавную страницу https://www.onliner.by/"
	echo "или другого сайта сохраняет ее в файл."
	echo "После по этому файлу формирует список уникальных слов написанных латиницей,"
	echo "слова не должны включать спецсимволы. (использовать wget)."
	exit
else
  wget https://www.onliner.by/ &>/dev/null
  ourpage=$(cat index.html)
  echo "$ourpage" | sed  -e 's/\s+/ /g' -e 's/\(.*\)/\L\1/g' -e 's/[^A-Za-z ]//g' -e :a -e 's/<[^>]*>//g;/</N;//ba'  | tr ' ' '\n' | sort | uniq
  exit 0
fi