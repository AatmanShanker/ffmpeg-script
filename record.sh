#!/bin/sh

#Creator: ErrorCreator
#Script:

printf "Enter filename (Make sure to add file format) :"
read filename
echo $filename

ffmpeg -f x11grab -s 1366x768 -i :0.0 -f alsa -ac 1 -i default $filename
