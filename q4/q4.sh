#! /bin/bash

arr=()
i=0

while read line
do
    arr[i]=$line
    (( i++ ))
done < actual_output.txt
arr[i]=$line

total=${#arr[@]}
i=0
count=0

while read line
do
    a=( ${arr[i]} )
    b=( $line )

    len=${#a[@]}
    for (( j=0; j<$len; j++ ))
    do
        if [ ${a[j]} != ${b[j]} ]
        then
            (( count++ ))
            break
        fi
    done
    (( i++ ))
done <generated_output.txt

echo "Secured $(($total - $count)) marks out of $total"




