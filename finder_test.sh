#!/bin/sh
if [ $# -le 3 ]
then
	numfiles=10
	writestr="AELD_IS_FUN"
else
	numfiles=$1
	writestr=$2
fi
pwd_path=$(pwd)
tmp_path="tmp/aeld-data"
dir_name="$pwd_path/$tmp_path"
mkdir -p ${dir_name}
for i in $(seq 1 $numfiles)
do
	./writer.sh "$dir_name/username$i.txt" $writestr
done
searchstr=$writestr
outputstr=$(./finder.sh $dir_name $searchstr)
# remove temporary directories
rm -rf ${dir_name}

echo ${outputstr} | grep "${searchstr}"
if [ $? -eq 0 ]; then
	echo "success"
	exit 0
else
	echo "failed: expected  ${numfiles} in ${outputstr} but instead found"
	exit 1
fi

