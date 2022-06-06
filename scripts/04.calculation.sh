#!/bin/bash
PATH=$HOME/bin:$PATH
export PATH

echo -e "You should input two number, I will multiply them! \n"
read -p "first number: " firstNum
read -p "second number: " secondNum

total=$((${firstNum}*${secondNum}))
echo -e "\nThe result of ${firstNum} x ${secondNum} is == ${total}"
