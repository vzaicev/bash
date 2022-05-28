#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "42. Печатать последние 30 строк файла кроме последних 5 строки с конца файла"
echo
echo
fi
touch file
buf1="1 \n2 \n3 \n4 \n5 \n6 \n7 \n8 \n9 \n10 \n11 \n12 \n13 \n14 \n15 \n16 \n17 \n18 \n19 \n20 \n21 \n22 \n23 \n24 \n25 \n26 \n27 \n28 \n29 \n30 \n31 \n32 \n33 \n34 \n35 \n36 \n37 \n38 \n39 \n40"
echo $buf1
echo -e "$buf1" >>file
readarray ARRAY < file
index=0 
while read line; do 
array[$index]="$line" 
index=$(($index+1)) 
done < file
echo 
echo
for ((a=0; a < ${#array[@]}; a++)) 
do 
echo ${array[$a]}
done
echo 
echo
echo "Результат после применения sed:"
sed -e :a -e '$q;N;31,$D;ba; ' file | sed -n -e :a -e '1,5!{P;N;D;};N;ba'
rm file