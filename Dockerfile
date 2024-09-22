FROM node:22-alpine

ENV VER="v2.0.1"

RUN addgroup -S web && adduser -S web -G web

WORKDIR /app

RUN npm install -g @11ty/eleventy@$VER && \
    npm cache clean --force

USER web

EXPOSE 8080

ENTRYPOINT ["npx", "-y", "@11ty/eleventy", "--serve"]
