#!/bin/bash
#defination
city=Adana
array=("ulaşım," "ulaşım rehberi," "," "dolmuş," "dolmuş hareket saatleri," "dolmuş saatleri," "dolmuş ücreti," "adana dolmuş," "adana dolmuş saatleri," "adana minibüs," "adana minibüs saatleri,"
"minibüs," "minibüs hareket saatleri," "minibüs saatleri," "minibüs ücreti,")
IFS=$'\n'
mkdir /home/dyilmaz/Desktop/shell/dolmus/new_work/sonuc/key
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
  echo "$line şehir içi ulaşım için genelde büyükşehir belediye otobüsleri, minibüsler, özel halk otobüsleri ve taksi aracılığı ile gerçekleştirilir. Belirli saatten sonra toplu taşıma bulunmadığı için tek seçenek taksidir. Buna istinaden 2010 yılında açılan $city metrosu 13 durağı ile hizmete girmiştir. Hafta içi saat 06:00 - 21:00 arası 10 dakika da bir 21:00 - 23:00 saatleri arasında ise 15 dk da bir hizmet vermektedir. Hafta sonlarında ise 06:15 - 23:00 arasında 15 dakika da bir hizmet vermektedir. Ücretleri tek kullanımlık bilet 3.00 TL çift bilet 5.50 TL ve 4 kullanımlık bilet ise 10.50 TL dir. $line $city da ulaşım için tüm ulaşım araçları kullanılabilir. $line ulaşımı için aşağıdaki metro saatlerini kullanabilirsiniz. Eğer $line için farklı ulaşım araçları ve saatlerinde farklılık olduğu takdirde sitemizde güncelleme anlık olarak gerçekleştirilecektir. $line dolmuş saatleri gün içerisindeki trafik yoğunluğuna göre değişiklik gösterebilir. Ancak normal şartlar altında $line dolmş saatleri 06:00 da başlamaktadır ve saat 23:00 a kadar mevcuttur. Her 15 dakika da bir dolmuş bulunmaktadır. Duruma göre $line dolmuşları dolunca kalkmakta ve trafik durumuna göre geç kalma durumu olmaktadır." >> ./sonuc/"$line"
  echo -e "Ücret tarifesi
                                  (otobüs metro) (özel halk ötobüsü) (dolmuş)
akıllı kart öğrenci           \t        1.40 TL       1,55 TL            1,75 TL
akıllı kart sivil             \t         2,25 TL       2,35 TL            2,55 TL
temassız Kart                 \t        2.25 TL       2,35 TL            2,55 TL
" >> ./sonuc/"$line"
  echo "$city metro saatleri" >> ./sonuc/"$line"
  echo "
hafta içi 	hafta sonu
06:00   *	06:15
06:10	*	06:30
06:20	*	06:45
06:30	*	07:00
06:40	*	07:15
06:50	*	07:30
07:00	*	07:45
07:10	*	08:00
07:20	*	08:15
07:30	*	08:30
07:40	*	08:45
07:50	*	09:00
08:00	*	09:15
08:10	*	09:30
08:20	*	09:45
08:30	*	10:00
08:40	*	10:15
08:50	*	10:30
09:00	*	10:45
09:10	*	11:00
09:20	*	11:15
09:30	*	11:30
09:40	*	11:45
09:50	*	12:00
10:00	*	12:15
10:10	*	12:30
10:20	*	12:45
10:30	*	13:00
10:40	*	13:15
10:50	*	13:30
11:00	*	13:45
11:10	*	14:00
11:20	*	14:15
11:30	*	14:30
11:40	*	14:45
11:50	*	15:00
12:00	*	15:15
12:10	*	15:30
12:20	*	15:45
12:30	*	16:00
12:40	*	16:15
12:50	*	16:30
13:00	*	16:45
13:10	*	17:00
13:20	*	17:15
13:30	*	17:30
13:40	*	17:45
13:50	*	18:00
14:00	*	18:15
14:10	*	18:30
14:20	*	18:45
14:30	*	19:00
14:40	*	19:15
14:50	*	19:30
15:00	*	19:45
15:10	*	20:00
15:20	*	20:15
15:30	*	20:30
15:40	*	20:45
15:50	*	21:00
16:00	*	21:15
16:10	*	21:30
16:20	*	21:45
16:30	*	22:00
16:40	*	22:15
16:50	*	22:30
17:00	*	22:45
17:10	*	23:00
17:20	*
17:30	*
17:40	*
17:50	*
18:00	*
18:10	*
18:20	*
18:30	*
18:40	*
18:50	*
19:00	*
19:10	*
19:20	*
19:30	*
19:40	*
19:50	*
20:00	*
20:10	*
20:20	*
20:30	*
20:40	*
20:50	*
21:00	*
21:15	*
21:30	*
21:45	*
22:00	*
22:15	*
22:30	*
22:45	*
23:00	*

" >> ./sonuc/"$line"
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
