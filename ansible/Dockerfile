FROM python:alpine

RUN set -eu; \
    apk update; \
    apk add --no-cache openssh-client-default; \
    python3 -m pip install --no-cache-dir ansible

CMD ["/bin/sh"]
