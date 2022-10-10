#! /bin/bash


# 1. Write a shell script that has 2 user created variables, uv1 and uv2. Ask for the values of the
# variables from the user and take in any values (real/integer/character) for the 2 variables. Test
# the program for different types of uv1 and uv2.
# (a) Print them as: (i) value of uv1 followed by value of uv2 separated by a comma and (ii)
# value of uv2 followed by value of uv1 separated by the word “and”.
# (b) Print the variables in reverse order [If uv1 is 1234, then output should be 4321]




read -p "Enter the value of uv1: " uv1
read -p "Enter the value of uv2: " uv2


echo " $uv1, $uv2"
echo " $uv2 and $uv1"

echo $uv1 | rev
echo $uv2 | rev