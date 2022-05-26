#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
       echo "Write a script that downloads the title page of https://www.onliner.by/ or another site saves it to a file. After this file forms a list of unique words written in Latin, words should not include special characters. (use wget)."
echo
echo
fi
#Code
wget http://www.bbc.com/ &>/dev/null
page=$(cat index.html)
echo "$page" | sed  -e 's/\s+/ /g' -e 's/\(.*\)/\L\1/g' -e 's/[^A-Za-z ]//g' -e :a -e 's/<[^>]*>//g;/</N;//ba'  | tr ' ' '\n' | sort | uniq
exit 0