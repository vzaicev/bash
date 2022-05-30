#!/bin/bash
if [ $argument == "-task" ]; then
    echo "Задание"
    echo "46. Печатать только те строки, которые НЕ совпадают с регулярным выражением"
    echo
    echo
fi
sed -n '/regexp/!p' text.txt