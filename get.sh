#!/bin/bash
for item in `wget -O -  https://location.services.mozilla.com/downloads | grep "MLS-full-cell"` 
do
echo "111 ${item}"
done 
# | grep "`date +%Y-%m-%d`"

