#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then 
	echo "Create a function that passes text of more than 20 words. The text is transferred from the file. The function processes the text and displays every word that starts with a capital letter."
	echo
	echo
fi
#Code
text=`cat text.txt`
echo $text 
IFS=32  read -ra words <<<"$text"
for word in $words
do
	echo $word | awk '/[A-Z]/'
done
