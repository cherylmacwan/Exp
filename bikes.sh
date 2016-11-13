#!/bin/bash

for ((i=1;1<10;i++))
do
g="20160$i-citibike-tripdata"
wget http://witestlab.poly.edu/bikes/$g.zip
unzip $g.zip

awk -F "\"*,\"*" '{print $4}' $g.csv | sort -n > newdata1_$g.txt
uniq newdata1_$g.txt > newdata2_$g.txt
sort newdata2_$g.txt > newdata3_$g.txt
tail lines==1 mostusedstop_$g.txt

done
