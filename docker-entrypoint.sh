#!/bin/bash

FFMPEG=$(which ffmpeg)

if [ "$#" -eq  "0" ]; then
  echo "You must provide at least one full YouTube URL."
  exit 1
else
  for url in "$@"; do
    youtube-dl --ffmpeg-location $FFMPEG -o '/tmp/output/%(title)s.%(ext)s' -x --audio-quality 0 --audio-format wav -i "$url"
  done
  exit 0
fi
