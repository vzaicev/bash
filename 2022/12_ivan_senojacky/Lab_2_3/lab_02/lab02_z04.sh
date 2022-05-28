#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "4. Создайте функцию, в которую передается текст, состоящий из более 20 слов. Текст передается из файла. Функция обрабатывает текст выводит каждое слово в которое начинается с заглавной буквы."
    echo ""
    echo ""
    break
  fi
  ((i++))
done

if [ $# -ne 1 ]
then
    echo "Too few arguments"
    exit 1
fi

text=`cat $1`

ord()
{
	echo -n "$1" | od -An -tuC
} 

capital() {
	if [ -z "$1" ]
	then
		echo "Empty file"
	else
		for word in $@
		do
			code=`ord ${word:0:1}`
			if [ $code -ge "65" ] && [ $code -le "90" ]
			then
				echo $word
			fi
		done
	fi
}

capital $text
