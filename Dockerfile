FROM ubuntu:18.04

VOLUME /tmp/output

RUN apt-get update && apt-get install -y youtube-dl ffmpeg

ENTRYPOINT [ "entrypoint.sh" ]
