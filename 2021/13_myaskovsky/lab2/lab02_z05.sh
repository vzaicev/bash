#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "5. Создайте функцию, в которую передается текст, состоящий из более 20 слов."
	echo "Текст передается из файла."
	echo "Функция обрабатывает текст выводит количество слов написанных латиницей,"
	echo "количество слов написанных кириллицей и число знаков препинания в тексте."
	echo
	exit
fi

#function isCyrillic {}
#
#function isLatin {}

function readWordsFromFile {
  tr -s '[:blank:]' '[\n*]' < text_for_z05.txt |
  while IFS= read -r word;
  do
    echo "$word"
  done
}


readWordsFromFile