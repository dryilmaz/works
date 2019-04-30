#!/bin/bash
IFS=$'\n'
file=/home/dyilmaz/Desktop/shell/dolmus/new_work/yeni1
cd /home/dyilmaz/Desktop/shell/dolmus/new_work
#while read line
#do
#  echo "$line denededede "
#done < yeni1
for line in `cat $file`
do
  echo -e "ADANA $line ulaşım rehberi için bizi takip et." >> ./sonuc/$line
done
