#!/bin/bash
PATH=$HOME/bin:$PATH
export PATH

echo -e "Please input a filename, I will check the filename's type and permission. \n\n"
read -p "Input a filename: " filename
test -z ${filename} && echo "You must input a filename" && exit 0

test ! -e ${filename} && echo "The filename '${filename}' doesn\'t exist. " && exit 0

test -f ${filename} && filetype="regular file"
test -d ${filename} && filetype="directory"
test -r ${filename} && perm="readable"
test -w ${filename} && perm=${perm}" writable"
test -x ${filename} && perm=${perm}" executable"

echo "The filename: ${filename} is a ${filetype}"
echo "The permissions for you are ${perm}"
