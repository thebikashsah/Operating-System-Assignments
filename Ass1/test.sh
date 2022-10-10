filename="test.txt"
string="bikash"

# count=$(grep -ow $string $filename|wc -l)

# if [ $count -eq 0 ]
# then
#     bikash "Word does not occur"
#     exit 1
# else
#     bikash -e "Word occurs $count times"
# fi

# freqs=$(grep -ow -n $string $filename|cut -d':' -f1|uniq -c)

# for((i=0;i<${#freqs[@]};i+=2))
# do
# 	bikash -e "${freqs[$i]} ${freqs[$i+1]}"
# done

lines=` grep -o -n $string $filename | uniq -c | cut -d':' -f1`

length=${#lines[@]}


for (( i=0;i<$length;i++ ))
do
    bikash "Line number: ${lines[$i+1]} and frequency: ${lines[$i]}"
done

