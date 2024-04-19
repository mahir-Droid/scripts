# scripts
Some scripts

combine_video_audio.sh
---------------------------------------
Combines video files with their audio files in a folder. Uncomment ffmpeg line to use.
Assumes there are x number of video files and x number of audio files, where each audio
is next to its corresponding video in sorted order.
Note: Will not work with any other irrelevant files in the origin folder.

Use: ./combine_video_audio.sh <source_folder_path>


random_batch_copy.sh
---------------------------------------
Copies n number of randomly selected certain type of files from source folder to destination
folder.

Use: ./random_batch_copy.sh <source_folder_path> <destination_folder_path> <n>
