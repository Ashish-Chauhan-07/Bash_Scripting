#!/usr/local/bin/bash

if [[ $# != '1'  ]]; 
then
    echo "Script works for only 1 string argument" && exit 1
fi

input=$1

sorted_input=`echo $1 | grep -o . | sort | tr -d "\n"`
#echo $sorted_input 

list_of_commands=`compgen -c | sort -u | awk ' length($0) == len ' len="${#input}"`
#echo $list_of_commands

commands=()

for i in $list_of_commands
do
    check_i=`echo $i | grep -o . | sort | tr -d "\n"`
    if [[ "$check_i" == "$sorted_input" ]]
    then    
        commands+=("$i")
    fi
done

commands_found=${#commands[@]}

if [[ $commands_found == 0 ]]
then
    echo "NO"
    exit 1
fi

echo -en "YES"

for i in "${commands[@]}"
do
    echo -en "\t$i"
done

echo -en "\n"