#!/bin/bash
#defination
city=Ağrı
city1=agri
ulasim1=ulasim
ulasim=Ulaşım
array=("ulaşım," "ulaşım rehberi," "," "dolmuş," "dolmuş hareket saatleri," "dolmuş saatleri," "dolmuş ücreti," "adana dolmuş," "$city dolmuş saatleri," "$city minibüs," "$city minibüs saatleri,"
"minibüs," "minibüs hareket saatleri," "minibüs saatleri," "minibüs ücreti,")
IFS=$'\n'
file=/home/dyilmaz/Desktop/shell/dolmus/new_work/yeni1
cd /home/dyilmaz/Desktop/shell/dolmus/new_work
for line in `cat $file`
do
  for i in "${array[@]}"
  do
    echo "$line $i" >> ./sonuc/"$line"
  done
done

for line in `cat $file`
do
  echo -e " <b>$line ulaşım</b> rehberi tarafımızca takip edilmekte ve bilgi verilmektedir.
  $city $line ulaşım bilgisine belediye otobüsü saatlerine ve dolmuş saatlerine yer verilmektedir.
  sitemiz üzerinde bulunan iller kısmından tüm <b>Türkiye</b>'deki ulaşım bilgilere ulaşabilirsiniz.
  <b>$city $line</b> için sitemiz tarafından bulunan tüm ulaşım bilgileri yayınlanmıştır.
  [catlist name=\"$city $ulasim\" numberposts=-1]
  <a href="https://dolmussaatleri.com/$city1'_'$ulasim1/">$city $ulasim</a> sayfası üzerinden tüm ulaşım saatleri
  paylaşılmaktadır.
  " >> ./sonuc/"$line"
  echo "$city ulaşımı için güncellenen bilgiler sitemiz üzerinden yayınlanacaktır.
  Yeni yapılan değişiklikleri tarafımıza bildirmeniz durumunda gerçekliği kontrol
  edilip sitemiz güncellenecektir. <a href="https://dolmussaatleri.com/iletisim/">İletişim sayfamız</a>
  üzerinden bizi bilgilendirebilirsiniz.
  Ulaşım saatleri $city $line trafik durumunda göre değişiklik gösterebilir. Resmi ve dini bayramlarda
  ücretlerde aynı şekilde değişiklik göstermektedir. Ulaşım saatlerindeki değişiklikler $city hava
  koşuluna göse tekrar değişiklik göstermektedir. Gerekli ulaşım bilgileri tarafımızca takip edilmekte ve
  anlık olarak güncelleme yapılmaktadır." >> ./sonuc/"$line"
done

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
