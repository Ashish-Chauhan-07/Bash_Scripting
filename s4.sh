#!/usr/local/bin/bash

if [[ $# > '2' || $# == '0'  ]]; 
then
    echo "Enter either 1 or at max 2 parameters" && exit 1
fi

if [[ $# == 1 ]]
then
{
    if [[ ($1 =~ ^[+-]?[0-9]+$)]]
    then
    {
        if (( $1>0 && $1<4000 ))
        then
        {
            n=$1
            #echo "Algo for 1 inteher to Roman" && exit 1
            thousands=('' M MM MMM)
            hundreds=('' C CC CCC CD D DC DCC DCCC CM)
            tens=('' X XX XXX XL L LX LXX LXXX XC)
            ones=('' I II III IV V VI VII VIII IX)
            th_index=$(($n / 1000))
            ((n= $n % 1000))
            h_index=$(($n / 100))
            ((n= $n % 100))
            t_index=$(($n / 10))
            ((n= $n % 10))
            roman=${thousands[th_index]}${hundreds[h_index]}${tens[t_index]}${ones[n]}
            echo $roman
        }
        else
        {
            echo "Enter the integer within the Roman Numeral range 1-3999" && exit 1
        }
        fi
    }
    else
    {
        echo "Please enter some Integer within the range" && exit 1
    }
    fi
}
fi

if [[ $# == 2 ]]
then
{
    if [[ ($1 =~ ^[+-]?[0-9]+$) && ($2 =~ ^[+-]?[0-9]+$) ]]
    then
    {
        ((n = $1 + $2))
        if (($n>0 && $n<4000))
        then
        {
            #echo "Algo for sum of 2 integers to Roman.." && exit 1
            thousands=('' M MM MMM)
            hundreds=('' C CC CCC CD D DC DCC DCCC CM)
            tens=('' X XX XXX XL L LX LXX LXXX XC)
            ones=('' I II III IV V VI VII VIII IX)
            th_index=$(($n / 1000))
            ((n= $n % 1000))
            h_index=$(($n / 100))
            ((n= $n % 100))
            t_index=$(($n / 10))
            ((n= $n % 10))
            roman=${thousands[th_index]}${hundreds[h_index]}${tens[t_index]}${ones[n]}
            echo $roman
        }
        else
        {
            echo "The sum of provided numbers exceeds the limiting bounds(1-3999), cosider another pair.." && exit 1
        }
        fi

    }
    else
    {
        #echo "Both inputs are not integer type.." && exit 1
        #if [[ ($1 =~ ^[\  M MM MMM CM]?[\  D CD]?[\  C CC CCC XC]?[\  L XL]?[\  X XX XXX IX]?[\  V IV]?[\  I II III]?) && ($2=B) ]]
        if [[ ($1 =~ ^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$) && ($2 =~ ^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})) ]]
        #if [[ $1=A && $2=B ]]
        then
        {
            x=$1
            y=$2
            #echo "Finally..!"
            declare -A val
            val['I']=1
            val['V']=5
            val['X']=10
            val['L']=50
            val['C']=100
            val['D']=500
            val['M']=1000
            int_x=0
            int_y=0
            ((len_x=${#x}-1))
            ((len_y=${#y}-1))
            #echo  "length x-"$len_x " lenght y-"$len_y
            for i in $(seq 0 $len_x)
            do
            {
                if (( $i>0 && val['${x:i:1}'] > val['${x:i-1:1}'] ))
                then
                {
                    #echo "Working for i="$i
                    (( int_x = $int_x + val['${x:i:1}'] - (2*val['${x:i-1:1}']) ))
                }
                else
                {
                    ((int_x = $int_x + val['${x:i:1}']))
                }
                fi
            }
            done
            for i in $(seq 0 $len_y)
            do
            {
                if (( $i>0 && val['${y:i:1}'] > val['${y:i-1:1}'] ))
                then
                {
                    (( int_y = $int_y + val['${y:i:1}'] - (2*val['${y:i-1:1}']) ))
                }
                else
                {
                    ((int_y = $int_y + val['${y:i:1}']))
                }
                fi
            }
            done
            ((sum_int = $int_x + $int_y ))
            #echo "int_x :"$int_x
            #echo "int_y :"$int_y
            #echo "Equivalent integer for the sum is : "
            echo $sum_int
        }
        else
        {
            echo "Wrong Input."
            echo "Following inputs are acceptable :"
            echo "1. One Integer (Conversion to Roman numeral)"
            echo "2. Two Integers (Sum converted to Roman numeral)"
            echo "3. Two Roman Numerals (Sum coverted to Integer)"
            echo "Try Again..!"
        }
        fi
    }
    fi

}
fi

