#!/bin/bash
PATH=$HOME/bin:$PATH
export PATH

echo -e "This program will calculate pi value for you, given any accuracy. "
echo -e "You can input a float number to calculate the pi value.  "
read -p "The scale number (10~10000) ?" checking

num=${checking:-"10"}

echo -e "Starting calculate pi value. Be patient. "
time echo "scale=${num};4*a(1)" | bc -lq
