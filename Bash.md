<!--
 * @Author       : Guanyue li
 * @Date         : 2022-06-05 23:17:52
 * @LastEditTime : 2022-06-06 02:22:29
 * @Description  : file content
 * @FilePath     : \easy_work_templates\Bash.md
-->
# EASY BASH

This is a reminder for bash. 

```bash
ctrl+u       # delete before
ctrl+k       # delete after
ctrl+a       # go to head
ctrl+e       # go to end

# Variable with no space besides =
myname="Guanyue Li"
echo ${myname} 
# Variable precomputation
version=$(uname -r)
echo ${version}
unset version   # cancel

# Prompt to read
read -p "Please Enter Your name (default 30s): " -t 30 named
echo ${named}

# Declare type of the variable. 
sum=100+200+300
echo ${sum}
declare -i sum=100+200+300
echo ${sum}

# delete content
path=$PATH
echo ${path#<pattern>}     # delete the shorted matched pattern from the beginning
echo ${path##<pattern>}     # delete the longest matched pattern from the beginning
# examples:
echo ${MAIL##/*/}   
echo ${path#*:}
echo ${MAIL%/*}    # /var/mail

# replace examples
echo ${path/bin/666}  
echo ${path//bin/666}  # replace all

# variable check
username=""
username=${username-root}
echo $username
username=${username:-root}
echo $username

unset str; var=${str=newvar}
echo "var=${var}, str=${str}"
str="oldvar"; var=${str=newvar}
echo "var=${var}, str=${str}"

# alias
alias lm='ls -al | more'
unalias lm
alias h='history'

# find something;
echo $PATH | cut -d ':' -f 3,5
export | cut -c 10-
last | cut -d ' ' -f 1

# Sort and process
sort
uniq
wc
ls -l /home | tee ~/homelist | more

# String Operators

```
