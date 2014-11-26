#!/bin/bash 
#This script can remove empty files in the indicated directory
cd ../T-Drive
for filename in $(ls -1)
do 
	if [ $( wc -l $filename | awk {'print $1'} ) = 0 ]
	then
		echo $filename
		rm $filename
	fi
done
