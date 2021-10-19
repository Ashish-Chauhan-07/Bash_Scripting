# Shell Scripts

## Script-1

part(a)--> `du -d1` is used to print all the directories ONLY present in its current directory.

part(b)--> `sort -r` is used sort the directory listing by size in decreasing order (using pipeline).

Additional notes : Size of the directory should be in human readable form --> `du -h & sort -h`

Columns should be tab separated + Output should only display the absolute directory name and its size--> `awk -F ./ '{print $NF "\t" $1}'`

`awk '!($2 == ".")'` is used to remove the last line from du -dh1 output.

## Script 2

Used a check on the number of parameters `$# != '2'`. In case valid number of parameters ain't provided script terminates with echoing a message.

#input.txt can be accessed using $1
#output.txt can be accessed using $2

Regular expression is used to apply the necessary check and tolower() function is used to convert selected words into lowercase.

Single greater than `>` is used instead of ">>" to avoid appending and choose **overwriting** over the file.

## Script 3

Used a check on the number of parameters `$# != '1'`. In case of invalid number of parameters script terminates with echoing a message.

For better comparison rather than permuting the input, it's lexicographically sorted using pipelining--> `echo $1 | grep -o . | sort | tr -d "\n"`

List of all commands that could be run on system is generated, uniquely sorted and only those are stored into variable which have same length as that of provided input : `compgen -c | sort -u | awk ' length($0) == len ' len="${#input}"`

Now, each command from the list is sorted lexicographically and compared with the sorted input and if match is found, it's appended to an array (it also ensures the sorted order of commands).

Count of array determines whether the input word contains any BASH command by permuting the letters of the input word or not. Zero results in echoing `NO` while in other case `YES` is echoed followed by rest of the commands in the array separated with tab delimiter.

## Script 4

This script is an attempt to create _user interactive_ program for Roman<->Integer conversion.

A check has been made on the valid number of arguments {1,2} `$# > '2' || $# == '0'` and relevant message is echoed before script terminates.

In case there is **single** argument it's ensured if it's an integer using regular expression `^[+-]?[0-9]+$` and within the valid range `$1>0 && $1<4000` which is [1-3999].
If these conditions are invalidated a message is echoed accordingly wherein user is asked to enter an integer or within the valid range and script terminates.
For conversion of int to roman, arrays have been created for each place-value of Indian Number System and respective symbol in Roman System is mapped as per the value of digit.

In case there are **two** arguments :
1.) It's checked if both are integers and in this case sum is calculated and validated for the correct range and then converted as stated above. In case sum comes out to be outside range a relevant is echoed onto the terminal and script terminates.

2.) It's checked if both the inputs entered are valid Roman Numerals with the help of regular expression `^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3}`. If this fails then message is echoed onto the terminal stating all valid inputs possible for the script.
For conversion of Roman -> Integer **associative array** is a used which stores decimal values of all valid symbols. On the basis of relative positions of the symbol equivalent decimal values are added or subtracted accordingly and decimal value is calculated for both and added. Then resultant sum is displayed.

## Script 5

#part(a)--> creating a new directory
`mkdir` is used to create new directory temp_activity and `cd` is used to move to this new directory.

#part(b)--> creating 50 files
Inside the directory _brace expansion_ is used with **touch** to create 50 files simultaneously with single command `touch temp{1..50}.txt`

#part(c\)--> changing the extensions
Using a loop `mv` command is used to change the extension of required files from `.txt to .md ` : `mv "temp"$i".txt" "temp"$i".md"`

#part(d)--> renaming and zipping files
Again `mv` command is used for renaming purposes : `mv -- "$i" "${i%.md}_modified.md/txt"` in a loop iterating over chosen extension.
Then `zip txt_compressed.zip *.txt` command zips all the .txt files present in the current directory.

---

Kindly see that `#!/usr/local/bin/bash` is the path of bash shell in the system in which scripts were written.
