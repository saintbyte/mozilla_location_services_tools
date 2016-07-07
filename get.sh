#!/bin/bash
set -x
set +ue
wget -O-  https://location.services.mozilla.com/downloads | grep "MLS-full-cell" > download.tmp 
while read -r line;
do
echo "111 ${line}"
LASTLINE=$line
break
done <  download.tmp
LAST_URL=`echo $LASTLINE | awk -F '"' '{print $2}' | awk -F '"' '{print $1}'`
FILE=`basename $LAST_URL`
echo $LAST_URL
echo $FILE
wget -O $FILE $LAST_URL
gunzip $FILE
rm -f download.tmp
