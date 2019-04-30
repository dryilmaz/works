#!/bin/bash
file=/home/dyilmaz/Desktop/shell/dolmus/new_work/yeni1
cd /home/dyilmaz/Desktop/shell/dolmus/new_work
for line in `cat $file`
do
  echo "Adana $line ulaşım rehberi" >> ./sonuc/$line
done
