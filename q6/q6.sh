touch temp.txt
touch output.txt
chmod 777 temp.txt
chmod 777 temp.txt
cp $1 temp.txt

cat $2 | while read line || [ -n "$line" ]
do 
    sed -i s/$line/bleep/i temp.txt
done

while read q
do
    echo $q
done < temp.txt

rm temp.txt
