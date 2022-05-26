#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "9. Написать скрипт, который скачивает заглавную страницу "
	echo "известного портала и архивирует ее (использовать wget и tar -czvf )."
	echo
	echo
fi 
wget -r -l 0 -k https://www.yandex.com && tar -cvzf yandex.tar.gz www.yandex.com
rm -R www.yandex.com
exit 0