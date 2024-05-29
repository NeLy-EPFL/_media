#!/bin/bash

# Loop through each .mp4 file in the video directory
for video_file in ./*.mp4; do
    # Extract the first frame of the video as a JPEG image
    ffmpeg -i "$video_file" -vf "select='eq(n,0)'" -q:v 1 -vframes 1 "${video_file%.*}_thumbnail.jpeg"
done

