#!/bin/sh

printf "Enter screen resolution: "
read screen_res

printf "Type v vor video only and a for audio and video both: "
read rectype

if [ $rectype = "v" ]
then
	printf "Enter filename (Make sure to enter the file format): "
	read vid_filename
	ffmpeg -f x11grab -s $screen_res -i :0.0 $vid_filename

elif [ $rectype = "a" ]
then
	printf "Enter filename (Make sure to enter the file format): "
	read filename
	ffmpeg -f x11grab -s $screen_res -i :0.0 -f alsa -ac 1 -i default $filename
fi
