if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "�������"
	echo "18. �������� ��� ��������� ���������� � ���� ������ ������,"
	echo "�� ������� ��������� �� ����, ��������� ������� ["
	echo 
	echo
fi
	echo "������� ������ ��������� ����������"
	read str1
	echo "������� ������ ��������� ����������"
	read str2
if [ "$str1" \> "$str2" ]
then
	echo "������ ��������� ���������� ������"
fi