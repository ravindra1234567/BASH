#! /bin/bash

count=0
touch "q3_out.txt"
find $1 > q3_out.txt
while read file
do
    
    if [ -f $file ]
    then
        #echo $file
        i=0
        while read line
        do
            #echo $line
            if [[ ! -z $line ]]
            then
                (( i++ ))
            fi
        done < $file
        count=$(expr $count + $i )
        #echo $count
    fi
done < q3_out.txt
rm q3_out.txt
echo $count
