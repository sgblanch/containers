FROM node:lts-alpine

WORKDIR /app

RUN adduser -D -g '' meshcommander \
    && chown meshcommander:meshcommander /app \
    && su -l meshcommander -c 'npm install --prefix /app meshcommander'

USER meshcommander

EXPOSE 3000/tcp

ENTRYPOINT [ "npx", "meshcommander" ]
CMD [ "--any" ]
