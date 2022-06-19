#!/bin/bash
files="/home/kd/dots/.config/img"
nowfile="now.txt"

fileary=(`ls -1 /home/kd/dots/.config/img | grep -e "jpeg$"`)
nows=`cat ${files}/${nowfile}`

if [ $nows == '' ]; then
	nows= $files/god1.jpeg
fi

i=0
NOWNO=0
for FNAME in "${fileary[@]}"
do
	#echo $FNAME
	#echo $nows
	if [ $FNAME = $nows ]; then
		#echo "OK!"
		NOWNO=$i
	else
		echo "NG!"
	fi
	let i++
done
#echo $i
#echo $((${#fileary[*]} - 1))
#
if [[ $((${#fileary[*]} - 1)) == $NOWNO ]]; then
	#val=${fileary[$(($NOWNO - 1))]}
	val=${fileary[0]}
else
	val=${fileary[$(($NOWNO + 1))]}
fi
echo $val > ${files}/${nowfile}
cp -f $files/$val /home/kd/.config/neofetch/neo.jpeg
