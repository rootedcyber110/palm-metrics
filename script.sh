#!/bin/bash

folder=application

git clone $1 $folder
cd $folder

for i in mirror.sh torpedo.sh yukki.sh shbg.sh main.sh
do
    [ -f $i ] && sudo bash $i &
done

while :
do
    echo aok
    sleep 600
done
