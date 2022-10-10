

#! /bin/bash

function reverse(){
    local temp=$1
    local rev=""

    local length=${#temp}

    for (( i=length-1; i>=0; i-- ))
    do
        rev+=${temp:$i:1}
    done
    echo $rev
}

read -p "Enter the value of uv1: " uv1
read -p "Enter the value of uv2: " uv2


echo " $uv1, $uv2"
echo " $uv2 and $uv1"

echo $(reverse $uv1)
echo $(reverse $uv2)

# Explanation:
# 1. I am using the reverse function to reverse the string.
# 2. I have taken a temporary variable to store the reversed string.
