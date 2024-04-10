#!/bin/bash
origin_fpath=$1
arr=( "$origin_fpath"/* )


length="${#arr[@]}"

suffix_audio="-audio.mp4"
suffix_video=" (1080p with 60fps).mp4"
suffix_video_2=" (1080p with 30fps).mp4"

for ((i=0; i<$length-1; i=i+2))
do
   video_fname="${arr[i]}"
   video=${video_fname%"$suffix_video"}
   video=${video%"$suffix_video_2"}
   
   audio_fname="${arr[i+1]}"
   audio=${audio_fname%"$suffix_audio"}
   
   
   if [ "$video" = "$audio" ]; then
       combined_fname="${video}.mp4"
       prefix="$origin_fpath"/
       combined_fname=${combined_fname#"$prefix"}
       echo $combined_fname
       ffmpeg -i "$video_fname" -i "$audio_fname" -c copy -map 0:v:0 -map 1:a:0 "$combined_fname"

   else
       echo "$video"
       echo "$audio"
       echo --------------------------------
   fi
done
