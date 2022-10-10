#! /bin/bash


# Write a shell script to count the number of lines in a file. Test if the file is present. If not, create and write.

echo -e "Enter the name of the file: \c"
read fileName

if [ -f $fileName ]
then
    echo "-----------------------------------------------------"
    echo "File exists"
    
    lines=` wc -l < $fileName `
    sleep 1 
    echo "-----------------------------------------------------"
    echo "Number of lines in the file: "  $lines
    echo "-----------------------------------------------------"
else
    echo "-----------------------------------------------------"
    echo "File does not exist"
    touch $fileName
    echo "-----------------------------------------------------"
    sleep 1
    echo "File created"
    echo "-----------------------------------------------------"
    sleep 1
    echo "Write something in the file"
    echo "Control+D to exit"
    echo "-----------------------------------------------------"
    cat > $fileName
    echo "-----------------------------------------------------"
    sleep 1
    echo "File written"
    echo "-----------------------------------------------------"
    lines=` wc -l < $fileName `
    sleep 1
    echo "Now the file has $lines lines"
    echo "-----------------------------------------------------"
fi

# Steps:
# 1. Check if the file exists. If yes, then count the number of lines in the file using wc -l.
# 2. If not, create the file and write something in it using touch and cat.
# 3. Count the number of lines in the file using wc -l.
# 4. Print the number of lines in the file.
