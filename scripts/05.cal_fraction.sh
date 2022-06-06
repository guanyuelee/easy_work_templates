#!/bin/bash
PATH=$HOME/bin:$PATH
export PATH

echo -e "A upgraded multiplication, you can input fraction now. "
read -p "Input the first number (fraction number is ok): " firstNum
read -p "\nInput the second number (fraction number is ok): " secondNum

total=$(echo "${firstNum}*${secondNum}" | bc)
echo -e "\nResult: ${firstNum}x${secondNum}==${total}. "

