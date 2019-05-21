#!/bin/bash
#defination
array=("," "dolmuş," "dolmuş hareket saatleri," "dolmuş saatleri," "dolmuş ücreti," "izmir dolmuş," "izmir dolmuş saatleri," "izmir minibüs," "izmir minibüs saatleri,"
"minibüs," "minibüs hareket saatleri," "minibüs saatleri," "minibüs ücreti,")
IFS=$'\n'
file=/home/dyilmaz/Desktop/shell/dolmus/new_work/yeni1
cd /home/dyilmaz/Desktop/shell/dolmus/new_work
#while read line
#do
#  echo "$line denededede "
#done < yeni1
for line in `cat $file`
do
  for i in "${array[@]}"
  do
    echo "$line $i" >> ./sonuc/"$line"
  done
done

for line in `cat $file`
do
  echo "ADANA $line ulaşım rehberi için bizi takip et." >> ./sonuc/"$line"
  echo "$line"  >> ./sonuc/"$line"
#  printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - >> ./sonuc/"$line"
  echo "
07:00		*		07:00
07:15		*		07:15
07:30		*		07:30
07:45		*		07:45
08:00		*		08:00
08:15		*		08:15
08:30		*		08:30
08:45		*		08:45
09:00		*		09:00
09:15		*		09:15
09:30		*		09:30
09:45		*		09:45
10:00		*		10:00
10:15		*		10:15
10:30		*		10:30
10:45		*		10:45
11:00		*		11:00
11:15		*		11:15
11:30		*		11:30
11:45		*		11:45
12:00		*		12:00
12:15		*		12:15
12:30		*		12:30
12:45		*		12:45
13:00		*		13:00
13:15		*		13:15
13:30		*		13:30
13:45		*		13:45
14:00		*		14:00
14:15		*		14:15
14:30		*		14:30
14:45		*		14:45
15:00		*		15:00
15:15		*		15:15
15:30		*		15:30
15:45		*		15:45
16:00		*		16:00
16:15		*		16:15
16:30		*		16:30
16:45		*		16:45
17:00		*		17:00
17:15		*		17:15
17:30		*		17:30
17:45		*		17:45
18:00		*		18:00
18:15		*		18:15
18:30		*		18:30
18:45		*		18:45
19:00		*		19:00
19:15		*		19:15
19:30		*		19:30
19:45		*		19:45
20:00		*		20:00
20:15		*		20:15
20:30		*		20:30
20:45		*		20:45
21:00		*		21:00
21:15		*		21:15
21:30		*		21:30
21:45		*		21:45
22:00		*		22:00
22:15		*		22:15
22:30		*		22:30
22:45		*		22:45
23:00		*		23:00
23:15		*		23:15
23:30		*		23:30
23:45		*		23:45
00:00		*		00:00

" >> ./sonuc/"$line"
done
cd sonuc
ls  | while read filename
do
   newfile=$( echo $filename |  sed 's/[^A-Za-z0-9_.]/-/g;s/-*-/-/g;s/^-//;s/-$//' )
   oldfile=$(echo $filename| sed "s/ /\\ /g")
   if [ "$filename" != "$newfile" ]
   then
     ls -l "$oldfile"
     mv -f "$oldfile"  "$newfile"
     ls -l "$newfile"
   fi
done
