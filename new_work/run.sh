#!/bin/bash
python3 perm.py > abc
sed "s/[^a-zA-Z0-9,()]//g" abc > yeni1
rm abc
sed -i 's/),/\n/g' yeni1
sed -i 's/(//g' yeni1
sed -i 's/,/ /g' yeni1
sed -i 's/)//g' yeni1
./cal1.sh
