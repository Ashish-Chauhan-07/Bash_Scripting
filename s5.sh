#!/usr/local/bin/bash

#part(a)
#creating a new directory
mkdir temp_activity
#moving into the directory 
cd temp_activity 

#part(b) --> using touch along with brace exapansion
touch temp{1..50}.txt

#part(c) --> changing the extensions 
for i in {1..25}
do
    mv "temp"$i".txt" "temp"$i".md"
done;

#part(d) -->

#------part(a)
for i in *.md
do 
    mv -- "$i" "${i%.md}_modified.md"
done;

for i in *.txt
do 
    mv -- "$i" "${i%.txt}_modified.txt"
done;

#------part(b)
zip txt_compressed.zip *.txt
