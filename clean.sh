#!/bin/bash 
#This script can remove the duplicated lines of the files in the indicated directory
cd ../T-Drive
for filename in $(ls -1)
do 
	cat $filename | uniq > tmp
	mv tmp $filename
done
