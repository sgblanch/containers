FROM python:alpine

RUN set -eu; \
    apk update; \
    apk add --no-cache openssh-client-default; \
    python3 -m pip install --no-cache-dir ansible; \
    mkdir -m 0700 -p /root/.ssh/mux

CMD ["/bin/sh"]
