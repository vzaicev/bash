#!/bin/bash
list_name=" \
        01_boloban_ananstsia  \
	02_davidivich_pavel   \
	03_drugina_gordei     \
	04_dubrovski_daniil   \
	05_dyidochkin_alexandr\
	06_juravlev_artem     \
	07_makarchik_veniamin \
	08_makarchikov_ilia   \
	09_ochkanov_daniil    \
	10_makarchik_veniamin \
	11_fursevich_evgenii  \
	   "
list_dir="lab01 lab02 lab03 lab04 lab05 lab06"
for i in $list_name
do
    if [ $i != "" ]; then
        test -d $i || mkdir $i
	    cd ./$i
        for j in $list_dir
        do 
            test -d $j || mkdir $j
            cd $j
            test -f "${j}.sh" || echo "#!/bin/bash" > "${j}.sh"
            cd ..
        done
		cd ..
	fi
done
