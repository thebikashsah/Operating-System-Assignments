#! /bin/bash

# Take file name as input

read -p "Enter file name: " file_name

if [ -f $file_name ]
then
    echo "Enter the word to be searched: "
    read word
    count=$( grep -ow $word $file_name|wc -l)
    if [ $count -eq 0 ]
    then
        echo "Word not found"
    else
        echo "Word found!!"
        echo "Number of times word found: $count"
        echo "Word found at line numbers: "
        
        
        # Number of occurences of word in lines n number of times
        
        freqs=$(grep -ow -n $word $file_name|cut -d':' -f1|uniq -c)

        for((i=0;i<${#freqs[@]};i+=2))
        do
	        echo -e "${freqs[$i]} ${freqs[$i+1]}"
        done

    fi
else
    echo "File does not exist"
    echo "Enter correct file name"
fi

# 1. Used grep to count the number of times the word is found in the file.
# 2. Used cut to extract the line number and the word from the output of grep.
# 3. Used uniq to remove duplicate line numbers.
# 4. Used for loop to print the line number and the word.