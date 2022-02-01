#!/bin/sh

printf "Type v vor video only and a for audio and video both: "
read rectype

if [ $rectype = "v" ]
then
	printf "Enter filename (Make sure to enter the file format): "
	read vid_filename
	ffmpeg -f x11grab -s 1366x768 -i :0.0 $vid_filename

elif [ $rectype = "a" ]
then
	printf "Enter filename (Make sure to enter the file format): "
	read filename
	ffmpeg -f x11grab -s 1366x768 -i :0.0 -f alsa -ac 1 -i default $filename
fi
