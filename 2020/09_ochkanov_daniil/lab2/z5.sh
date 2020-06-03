#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
	echo "Задание"
	echo "5. Создайте функцию, в которую передается текст, состоящий из более 20 слов. Текст передается из файла. Функция обрабатывает текст и выводит каждое слово, которое начинается с заглавной буквы."
	echo
fi

text=$"The coronavirus COVID-19 is affection 213 countries and territories around the World and 2 international conveyances. The day is reset after midnight GMT +0. The list of countries and territories and their continental regional classificaion is based on the Unaited Nations Geoshceme."

echo $text

fun()
{
	echo -n "$1" | od -An -tuC
}

toCapitalLetter()
{
	for word in $@
	do
		article=`fun ${word:0:1}`
		if [ $article -ge "65" ] && [ $article -le "90" ]
		then
			echo $word
		fi
	done
}


toCapitalLetter $text
