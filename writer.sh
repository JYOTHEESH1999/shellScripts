#!/bin/sh
if [ $# -eq 0 ]
then 
	echo "expected file path as first argument and content string as second"
	exit 1
else
	if [ $# -eq 1 ]
	then
		echo "expected two arguments but got one"
		exit 1
	else
		writefile=$1
		writestr=$2
		echo "got two args directory ${writefile} search string :${writestr}"
	fi
fi
echo "writing ${writestr} into file ${writefile}"
echo ${writestr} > ${writefile}
exit 0
