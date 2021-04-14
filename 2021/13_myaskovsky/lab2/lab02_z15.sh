#!/bin/bash
for argument in "$@"
do
  shift
  if [ $argument == "-task" ]; then
    echo "15. Написать скрипт,"
	  echo "который выводит информацию о процессоре"
	  echo "(processor, model name, cpu MHz)"
    continue
  fi
  set -- "$@" "$argument"
done