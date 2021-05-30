  
#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "57. Печатать строки длиной меньше или равной 35 символов"
	echo 
	echo
fi
	sed -n '/^.\{35\}/!p' file.txt