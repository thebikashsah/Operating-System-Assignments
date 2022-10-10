#! /bin/bash


# Write a shell script that counts the number of ordinary files (not directories) in the current working directory and its sub-directories. Repeat the count of files including the subdirectories that the current working directory has.


cur_dir=$PWD
echo "Current directory is $cur_dir"

files=$( find . -type f )
directories=$( find . -type d )

count_files=0
count_dir=0
# print files in current directory
echo "Files in current dir not including subdirectories"

for file in $files
do
    count_files=$(( count_files+1 ))
    echo $file
done
echo "-----------------------------------------------------"
echo "Total number of files in current directory: $count_files"
echo "-----------------------------------------------------"



# print the directories in current directory
echo "Subdirectories in the current directory"
for directory in $directories
do
    
    if [ $directory != "." ]
    then
        count_dir=$(( count_dir+1 ))
        echo $directory
    fi
done
echo "-----------------------------------------------------"
echo "Total number of directories in current directory: $count_dir"
echo "-----------------------------------------------------"


# 1. Used the find command to find all the files in the current directory and its sub-directories.
# 2. Store the files in a variable.
# 3. Used a loop to count the number of files by incrementing the count variable, while traversing the files in the variable.
# 4. Print the number of files.
# 5. Repeat the same for the directories.
# 6. I have used loop to find the number of directories because find command returns the current directory as well.
# 7. So I have used a condition to exclude the current directory from the count.
# 8. Print the number of directories.
