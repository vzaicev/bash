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

function countWordsFromFile {
  latinCounter=0
  cyrillicCounter=0

  # internal field separator
  while IFS= read -r word; do
    if isLatin $word;
    then
      latinCounter=$((latinCounter+1))
    fi

    if isCyrillic $word;
    then
      cyrillicCounter=$((cyrillicCounter+1))
    fi
  #   <<< is known as here-string . Instead of typing in text, you give a pre-made string of text to a program.
  #   tr command can be used in the following way to convert any string from uppercase to lowercase.
  #   [:blank:] contains only those characters which produce "empty space" within the same line,
  # i.e. "space" and horizontal tab \t
  #
  done <<<$(tr -s '[:blank:]' '[\n*]' < text_for_z05.txt)

  echo $latinCounter
  echo $cyrillicCounter
}


countWordsFromFile
