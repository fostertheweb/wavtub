FROM ubuntu:18.04

RUN mkdir -p /tmp/output
VOLUME /tmp/output

RUN apt-get update && apt-get install -y youtube-dl ffmpeg

COPY ./entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]
