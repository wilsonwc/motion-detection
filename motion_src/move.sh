#!/bin/bash

IN=$1
OUT=$2

for dir in $(ls $IN)
do
    echo $dir
    for file in $(ls $IN/$dir)
    do
        echo "- " $dir/$file
        cp $IN/$dir/$file "$OUT/$dir-$file"
    done
done
