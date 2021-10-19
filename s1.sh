#!/usr/local/bin/bash

#part(a)--> du -d1 is used to print all the directories ONLY present in its current directory

#part(b)--> sort -r is used sort the directory listing by size in decreasing order (using pipeline)

#additional notes : Size of the directory should be in human readable form --> du -h & sort -h
#Columns should be tab separated + Output should only display the absolut directory name and
#its size --> awk -F ./ '{print $NF "\t" $1}'
#awk '!($2 == ".")' is used to remove the last line from du -dh1 output

du -hd1 | sort -rh | awk '!($2 == ".")' | awk -F ./ '{print $NF "\t" $1}'
