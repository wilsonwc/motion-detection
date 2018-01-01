#!/bin/bash

VIDEOS=$1
OUT=$2

for file in $(ls $1 | sort -r)
do
    name="${file%.*}"
    echo "Processing: $name"
    video_out="$OUT/$name"
    mkdir $video_out
    ./bin/motion "$VIDEOS/$file" "$video_out" 1792 0 2688 760 50 100
done
