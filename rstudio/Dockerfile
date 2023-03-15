ARG R_VERSION=4.2.2
FROM rocker/verse:${R_VERSION}

COPY workspace.sh /etc/cont-init.d/03_workspace

RUN set -eux; \
    apt-get update; \
    apt-get upgrade -y; \
    printf "/usr/local/lib/R/lib\n" > /etc/ld.so.conf.d/R.conf; \
    Rscript --no-save --no-restore -e 'install.packages("renv")'

ENV DISABLE_AUTH=true TZ=America/New_York
