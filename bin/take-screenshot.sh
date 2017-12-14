#!/bin/bash

now=$(date +"%F_%H-%M-%S")
ffmpeg -f x11grab -video_size 1400x900 -i $DISPLAY -vframes 1 ~/Imagens/screenshots/$now.png