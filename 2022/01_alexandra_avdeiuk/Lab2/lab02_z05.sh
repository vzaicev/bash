#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "5. Создайте функцию, в которую передается текст, состоящий из более 20 слов."
echo "Текст передается из файла. Функция обрабатывает текст, выводит количество слов,"
echo "написанных латиницей, количество слов, написанных кириллицей и число знаков препинания."
echo 
echo
fi

function isCyrillic {
reCyrillic="[ЁёА-я]"
if [[ $1 =~ $reCyrillic ]]; then
return 0
else
return 1
fi
}

function isLatin {
reLatin="[A-Za-z]"
if [[ $1 =~ $reLatin ]]; then
return 0
else
return 1
fi
}

function punctuation {
rePunct="[?!,.-:;]"
if [[ $1 =~ $rePunct ]]; then
return 0
else
return 1
fi
}

function count {
latinCounter=0
cyrillicCounter=0
punctCounter=0
while IFS= read -r word; do
if isLatin $word; then
latinCounter=$(($latinCounter+1))
fi
if isCyrillic $word; then
cyrillicCounter=$(($cyrillicCounter+1))
fi
if punctuation $word; then
punctCounter=$(($punctCounter+1))
fi
done <<<$(tr -s '[:blank:]' '[\n*]' < text.txt)

echo $latinCounter
echo $cyrillicCounter
echo $punctCounter
}

count
