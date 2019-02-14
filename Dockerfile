FROM ubuntu:18.04

RUN mkdir -p /tmp/output
VOLUME /tmp/output

RUN apt-get update && apt-get install -y curl python ffmpeg
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
RUN chmod +x /usr/local/bin/youtube-dl

COPY ./docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "docker-entrypoint.sh" ]
