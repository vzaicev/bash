!#/bin/bash
if [ -n "$1" ] && ["$1" == "-task" ];
then
	echo "Задание"
	echo "9. Написать скрипт, который скачивает заглавную страницу известного портала и архивирует ее (использовать wget и tar -czvf )."
	echo
fi
wget -r https://www.edummf.bsu.by && tar -cvf edummf.tar edummmf
