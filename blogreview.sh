#!/bin/bash
if [ ! -n "$1" ] ;then
    today="@"`date +%Y%m%d`
else
    today="@$1"
fi
# echo $today
reviewfile=`grep -l $today  *`
# echo $reviewfile
vim $reviewfile