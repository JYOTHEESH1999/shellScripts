#!/bin/sh
if [ $# -eq 0 ]
then 
	echo "expected directory as first argument and search string as second"
	exit 1
else
	if [ $# -eq 1 ]
	then
		echo "expected two arguments but got one"
		exit 1
	else
		filesdir=$1
		searchstr=$2
		echo "got two args directory ${filesdir} search string :${searchstr}"
	fi
fi
if [ -d $filesdir ]
then 
	filescount=$(find ${filesdir} -type f | wc -l)
	searchcount=$(grep -r ${searchstr} ${filesdir} | wc -l)
	echo "The number of files are ${filescount} and the number of matching lines are ${searchcount}"
	exit 0
else
	echo "not a directory"
	exit 1
fi
