# Node.js 22 on Alpine 3.20 running 11ty via NPX
FROM node:22-alpine3.20

ENV VER="v2.0.1"

WORKDIR /app

EXPOSE 8080

USER root

ENTRYPOINT [ "npx", "-y", "@11ty/eleventy", "--serve" ]
