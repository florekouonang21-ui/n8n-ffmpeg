FROM node:20-alpine

RUN apk add --no-cache ffmpeg

RUN npm install -g n8n

ENV NODE_FUNCTION_ALLOW_BUILTIN=child_process
ENV NODE_FUNCTION_ALLOW_EXTERNAL=*
ENV N8N_RUNNERS_ENABLED=true

EXPOSE 5678

CMD ["n8n"]
