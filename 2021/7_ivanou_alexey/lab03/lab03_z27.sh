#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "27. Замена "scarlet" или "ruby", или "puce" на "red", или "back" на "white""
	echo 
	echo
fi
	sed 's/scarlet/red/g;s/ruby/back/g;s/back/white/g' file.txt 