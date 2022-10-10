#! /bin/bash


read -p "Enter the first birthday DD/MM/YYYY: " date1

if [ $(echo $date1|grep -q '^[0-3][0-9]/[0-1][0-9]/[0-9]\{4\}$') ]
then
    echo "Enter valid birthday"
    exit 0
fi

read -p "Enter the second birthday DD/MM/YYYY: " date2

if [ $(echo $date2|grep -q '^[0-3][0-9]/[0-1][0-9]/[0-9]\{4\}$') ]
then
    echo "Enter valid birthday"
    exit 0
fi

function get_date(){
    local d=$1
    local year=$(( $d/31536000 ))
    d=$(( $d%31536000 ))

    local month=$(( $d/2628288 ))
    d=$(( $d%2628288 ))

    local day=$(($d/86400))
    d=$(($d/86400))

    echo "Age is $year years,$month months,$day days"
}

day1=$(echo $date1|cut -d"/" -f1)
month1=$(echo $date1|cut -d"/" -f2)
year1=$(echo $date1|cut -d"/" -f3)

day2=$(echo $date2|cut -d"/" -f1)
month2=$(echo $date2|cut -d"/" -f2)
year2=$(echo $date2|cut -d"/" -f3)

week1=$(date --date="$month1/$day1/$year1" '+%A')
week2=$(date --date="$month2/$day2/$year2" '+%A')

if [ "$week1" == "$week2" ]
then
    echo "Born on same day of week"
else
    echo "Born on different day of week"
fi

second1=$(date --date="$month1/$day1/$year1" '+%s')
second2=$(date --date="$month2/$day2/$year2" '+%s')
currsecond=$(date '+%s')

second1=$(( $currsecond-$second1 ))
second2=$(( $currsecond-$second2 ))
#echo $second1
get_date $second1
get_date $second2

# 1. Get the FIRST day using date +%A and store it in a variable.
# 2. Get the SECOND day using date +%A and store it in a variable.
# 3. Check if the FIRST day is equal to the SECOND day.
# 4. Get the age in seconds using date +%s and store it in a variable.
# 5. Get the current time in seconds using date +%s and store it in a variable.
# 6. Subtract the current time from the age in seconds and store it in a variable.
# 7. Call the get_date function to get the age in years, months and days.