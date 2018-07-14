#!/bin/bash

now=$(date +"%F_%H-%M-%S")
ffmpeg -f x11grab -video_size 1920x1080 -i $DISPLAY -vframes 1 ~/Imagens/screenshots/$now.png