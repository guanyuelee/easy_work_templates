#!/bin/bash
PATH=$HOME/bin:${PATH}
export PATH

echo -e "I will use 'touch' command to create 3 files. " 
read -p "Please input your filename: " filename

filename=${filename:-"filename"}

date1=$(date --date='2 days ago' +%Y_%m_%d)
date2=$(date --date='1 days ago' +%Y_%m_%d)
date3=$(date +%Y_%m_%d)

file1="${filename}_${date1}"
file2="${filename}_${date2}"
file3="${filename}_${date3}"

touch "${file1}"
echo "Create file: ${file1}"

touch "${file2}"
echo "Create file: ${file2}"

touch "${file3}"
echo "Create file: ${file3}"

