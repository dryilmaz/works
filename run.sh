#!/bin/bash
array=("," "dolmuş," "dolmuş hareket saatleri," "dolmuş saatleri," "dolmuş ücreti," "izmir dolmuş," "izmir dolmuş saatleri," "izmir minibüs," "izmir minibüs saatleri,"
"minibüs," "minibüs hareket saatleri," "minibüs saatleri," "minibüs ücreti,")
for i in "${array[@]}"
do
  echo "$1 $2 $i" >> deneme
done
echo "İzmir $1 $2 dolmuşu sabah saat 07:00 da başlar. 15 dk da bir kalkar. Fiyat $3 TL’dir. $1 $2 dolmuş saatleri" >> deneme
atom deneme
