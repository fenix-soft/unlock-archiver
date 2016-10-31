#!/bin/bash

# unlock archive zip without password, the script use the dictionary attack (use file dic-pass.txt), the script find all zip file in the directory to run and check it all, and if possible extract the archive file.#
#Copyright (c) 2014 fenix-soft
 

checkpass() { 
for i in `cat dic-pass.txt`
do  a="`7za x -y -p$i $j | grep 'Everything is Ok'`"
if [ "$a" = "Everything is Ok" ]
then echo; echo; echo "file: $j  pass trovata:  $i"; echo ; echo "ho estratto i file...con sucesso."; echo 
return 0
fi
done }

for j in `ls *.zip`
do echo; echo; echo "archivio $j"

checkpass; done

