#!/bin/bash
python3 perm.py > yeni
sed "s/[^a-zA-Z0-9,()]//g" yeni > yeni1
rm yeni
sed -i 's/),/\n/g' yeni1
sed -i 's/(//g' yeni1
sed -i 's/,/ /g' yeni1
sed -i 's/)//g' yeni1
atom yeni1
