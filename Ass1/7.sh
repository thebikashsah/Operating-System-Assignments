

#! bin/bash

echo "Enter file name: "
read file_name

echo "Enter the first pattern to be searched and replaced : "
read pattern1

echo "Enter the replacing pattern : "
read pattern2


if [ -f $file_name ]
then

    count=$( grep -ow $pattern1 $file_name|wc -l)
    if [ $count -eq 0 ]
    then
        echo "Word not found"
    else
        # Replace the pattern with the new pattern
        sed -i -e "s/$pattern1/$pattern2/g" $file_name
        echo "File updated"
    fi
else
    echo "File does not exist"
    echo "Enter correct file name"
fi