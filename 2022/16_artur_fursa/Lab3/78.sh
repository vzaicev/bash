#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ]; then
echo "Задание"
echo "78. Удалить последнюю непустую строку в каждом абзаце."
echo
echo
fi
cat $1 | sed -n '/^$/{p;h;};/./{x;/./p;}'
exit 0