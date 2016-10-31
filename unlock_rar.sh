#!/bin/bash

# unlock archive rar without password, the script use the dictionary attack (use file dic-pass.txt), the script find all rar file in the directory to run and check it all, and if possible extract the archive file.
#Copyright (c) 2014 fenix-soft

checkpass() { 
for i in `cat dic-pass.txt`
do  a="`unrar x  -p$i $j | grep 'All OK'`"
if [ "$a" = "All OK" ]
then echo
clear
echo "file: $j  pass trovata:  $i"; echo ; echo "ho estratto i file...con sucesso."; echo
return 0
fi
done }

for j in `ls *.rar`; do echo; echo; echo "archivio $j" 
checkpass; done
