#!/bin/bash

##############################################
#     defination                             #
##############################################
city=Istanbul
city1=istanbul
ulasim1=ankara-dolmus-saatleri
ulasim=Ulaşım
n=1
lines=0
#array=("ulaşım," "dolmuş saatleri," "dolmuş," "dolmuş ücreti,"
#"$city dolmuş saatleri," "minibüs saatleri," "minibüs," "$city minibüs saatleri," "minibüs ücreti,")
#array1=("dolmuş saatleri," "minibüs saatleri")
IFS=$'\n'
file=/home/dyilmaz/Desktop/shell/dolmus/new_work/yeni1
cd /home/dyilmaz/Desktop/shell/dolmus/new_work
##############################################
#   end  defination                          #
##############################################


##############################################
#   count num of city                        #
##############################################

while IFS= read -rN1 char; do
if [[ "$char" == $'\n' ]]; then
    ((++lines))
fi
done < "$file"
##############################################
#   end  num of city                         #
##############################################


##############################################
#     create keywords                        #
##############################################
#  for line in `cat $file`
#  do
#    for i in "${array[@]}"
#    do
#      echo "$line $i" >> ./sonuc/"$line"
#    done
#  done
#
#  for line in `cat $file`
#  do
#    for i in "${array1[@]}"
#    do
#      echo "$city $line $i" >> ./sonuc/"$line"
#    done
#  done
##############################################
#    end create keywords                     #
##############################################


##############################################
#    create text                             #

##############################################
#for line in `cat $file`
#do
#  echo -e "<b>$line dolmuş saatleri</b>"
#done



touch /home/dyilmaz/Desktop/shell/dolmus/new_work/yeni/yeni.csv
echo -e "\"title\"***\"category\"***\"text\"" >> /home/dyilmaz/Desktop/shell/dolmus/new_work/yeni/yeni.csv
for line in `cat $file`
do
  echo -e "\"$line dolmuş saatleri ve güzergahı\"***\"$city1 ulaşım\"***\"<b>$line dolmuş saatleri ve güzergahı</b> tarafımızca takip edilmekte ve bilgi verilmektedir. $city $line ulaşım bilgisine belediye otobüsü saatlerine ve dolmuş saatleri bulunmaktadır. Sitemiz üzerinde bulunan iller kısmından tüm <b>Türkiye</b>'deki ulaşım bilgilere ulaşabilirsiniz. <b>$city $line</b> için sitemiz tarafından bulunan tüm ulaşım bilgileri yayınlanmıştır. <a href="https://dolmussaatleri.com/istanbul-dolmus-saatleri/">$city $ulasim</a> sayfası üzerinden tüm ulaşım saatleri paylaşılmaktadır. <h2>$line dolmuş saatleri</h2> $city aktif olan <strong><em>tüm dolmuş saatleri</em> </strong> aşağıda paylaşılmaktadır. Ulaşım $city için güncellenen bilgiler sitemiz üzerinden yayınlanacaktır. Dolmuş saatleri ve güzergahlarının tüm güncellemesi sitemizde paylaşılmıştır. Yeni yapılan değişiklikleri tarafımıza bildirmeniz durumunda gerçekliği kontrol edilip sitemiz güncellenecektir. <a href="https://dolmussaatleri.com/iletisim/">İletişim sayfamız</a> üzerinden bizi bilgilendirebilirsiniz. Ulaşım saatleri $city $line trafik durumunda göre değişiklik gösterebilir. Resmi ve dini bayramlarda ücretlerde aynı şekilde değişiklik göstermektedir. Ulaşım saatlerindeki değişiklikler $city hava koşuluna göse tekrar değişiklik göstermektedir. Gerekli ulaşım bilgileri tarafımızca takip edilmekte ve anlık olarak güncelleme yapılmaktadır.\"" >> ./yeni/yeni.csv
done


##############################################
#   end create text                          #
##############################################

##############################################
#   edit all files                           #
##############################################
cd /home/dyilmaz/Desktop/shell/dolmus/new_work/sonuc
ls  | while read filename
do
   newfile=$(echo $filename |  sed 's/[^A-Za-z0-9_.]/-/g;s/-*-/-/g;s/^-//;s/-$//' )
   oldfile=$(echo $filename| sed "s/ /\\ /g")
   if [ "$filename" != "$newfile" ]
   then
     ls -l "$oldfile"
     mv -f "$oldfile"  "$newfile"
     ls -l "$newfile"
   fi
done



##############################################
#    end  edit all files                     #
##############################################
