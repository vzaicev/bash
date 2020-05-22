#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "9. Написать скрипт, который скачивает заглавную страницу "
	echo "известного портала и архивирует ее (использовать wget и tar -czvf )."
	echo
	echo
fi 
wget -r -l 0 -k https://www.onliner.by && tar -cvzf onliner.tar.gz www.onliner.by
rm -R www.onliner.by