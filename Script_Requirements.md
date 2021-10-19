# Script_1 :

- When the script is executed from the current directory, it should print all the directories(ONLY) present in its current directory.

- The output should sort the directory listing by size in decreasing order.

_Additional Notes:_

- Size of the directory should be in human readable form and in any form i.e., in Bytes/MB/KB/GB.

- Columns should be tab separated.

- Output should only display the absolute directory name and its size. Path of the directory should not be displayed.

# Script_2 :

- Pass input.txt and output.txt files as arguments to the shell script.

- The input.txt should contain some random text.

- Print all the words ending with ing in new line inside output.txt file.

_Additional Notes:_

- Ensure that the text in the input.txt should contain words ending with ‘ing’.

# Script_3 :

- Take a word (string) as an input as an argument.

- Check whether the input word contains any BASH command by permuting the letters of the input word.

- If a BASH Command exists, print YES, followed by a tab and then BASH command(s).

- Else print NO.

- If there is more than one command, print them with a tab delimiter and in sorted order.

_Additional Notes:_

- All the requirements should be addressed via single SHELL script ONLY.

- Do not consider substrings of the input word.

- In case of multiple commands strictly delimit them with a tab delimiter.

- There should not be any leading/trailing tab delimiters.

- Same command must NOT occur more than once in the answer.

# Script_4 :

- If you pass one INTEGER as an argument to the BASH script, then return its equivalent ROMAN Number as output.

- If you pass two INTEGERS as two arguments the BASH script, return the SUM of two integers in the form of ROMAN numbers.

- If you pass two ROMAN numbers as two arguments the BASH script, return the SUM of two ROMAN numbers in the form of INTEGERS.

# Script_4 :

- Create a directory temp_activity

- Inside this directory, create files temp\<i>.txt, substitute \<i> with numbers from 1 to 50. Thus, you’ll have 50 files with names temp1.txt, temp2.txt.... (Achieve this with a single command without loop)

- Change the extensions of files from temp1 to temp25 from txt to md

- For all the files, change the name from

  - temp\<i>.\<extension> to temp\<i>\_modified.\<extension> where \<i> is between 1 to 50

  - Among these files with extension belonging to txt and md, ZIP all the .txt files

ONLY and name the ZIP file as txt_compressed.zip

_Additional Notes:_

- All the requirements should be addressed via single SHELL script ONLY.
