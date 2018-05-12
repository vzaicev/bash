for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "Задание"
    echo "25.оздать функцию в командной строке, выводящую только четные параметры,"
	echo "перееданные в скрипт и запустить ее"
    echo
    echo
    continue
  fi
  set -- "$@" "$argument"
done
process_even()
{
  mod=`expr $2 % 2`
  if [ $mod == 1 ]; then 
    echo $1
  fi
}
arguments=("$@")
last_index=`expr $# - 1` 
for index in `seq 0 $last_index`
do
process_even ${arguments[$index]} ${index}
done
exit 0