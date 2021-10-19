#!/usr/local/bin/bash

if [[ $# != '2'  ]]; 
then
    echo "Enter exactly 2 parameters" && exit 1
fi

#input.txt can be accessed using $1
#output.txt can be accessed using $2

awk '{ for(i=1;i<=NF;i++) {if($i~/[iI][nN][gG]$/) {print tolower($i)}} }' $1 > $2
