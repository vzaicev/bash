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
  echo $1
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


  tr -s '[:blank:]' '[\n*]' < text_for_z05.txt |
  while IFS= read -r word; do
    #echo "$word"
    if isLatin $word;
    then

      #let latinCounter=latinCounter+1
      latinCounter=$((latinCounter+1))
      echo LATIN $latinCounter
    fi

    if isCyrillic $word;
    then
      #let cyrillicCounter=cyrillicCounter+1
      cyrillicCounter=$((cyrillicCounter+1))
      echo Cyrillic $cyrillicCounter
    fi
  done

  echo $latinCounter
  echo $cyrillicCounter
}


countWordsFromFile
