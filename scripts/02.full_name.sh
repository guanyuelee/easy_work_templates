#!/bin/bash
PATH=$HOME/bin:${PATH}
export PATH

read -p "Please input your first name (default: Li): " -t 10 firstname
read -p "Please input your last name (default: Guanyue): " -t 10 lastname

# check
echo -e "\nYour full name is: ${firstname:-Li} ${lastname:-Guanyue}"

