FROM alpine:latest AS alpine

FROM docker.n8n.io/n8nio/n8n:latest

USER root

COPY --from=alpine /sbin/apk /sbin/apk
COPY --from=alpine /lib /lib
COPY --from=alpine /usr/lib /usr/lib

RUN apk add --no-cache ffmpeg

USER node
