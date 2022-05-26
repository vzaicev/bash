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

function isCyrillic {
  reCyrillic="[ЁёА-я]"
  if [[ $1 =~ $reCyrillic ]];
  then
    return 0
  else
    return 1
  fi
}

function isLatin {
  reLatin="[A-Za-z]"
  if [[ $1 =~ $reLatin ]];
  then
    return 0
  else
    return 1
  fi
}

function isNum {
  isNum="[!?,.-;:]"
  if [[ $1 =~ $isNum ]];
  then
    return 0
  else
    return 1
  fi
}

function countWordsFromFile {
  latinCounter=0
  cyrillicCounter=0
  numCounter=0

  while IFS= read -r word; do
    if isLatin $word;
    then
      latinCounter=$((latinCounter+1))
    fi

    if isCyrillic $word;
    then
      cyrillicCounter=$((cyrillicCounter+1))
    fi
	
	if isNum $word;
    then
      numCounter=$((numCounter+1))
    fi
  done <<<$(tr -s '[:blank:]' '[\n*]' < mytext.txt)

  echo "Latin: "$latinCounter
  echo "Cyrillyc: "$cyrillicCounter
  echo "Punctuation marks: "$numCounter
}


countWordsFromFile