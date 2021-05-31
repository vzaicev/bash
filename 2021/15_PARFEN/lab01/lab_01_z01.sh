  
#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "15. Сравнить две числовые переменные и вывести сообщение yes или no,"
echo "используя команду test."
echo
echo
fi
  if test "$7" -eq "$8" ;
  then
        echo "yes"
  else
        echo "no" 
  fi
else
  echo "error"
  
fi
exit 0