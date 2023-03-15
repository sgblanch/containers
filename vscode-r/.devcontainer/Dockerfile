ARG R_VERSION=4.2.2
FROM rocker/r-ver:${R_VERSION}

RUN set -eux; \
    printf "/usr/local/lib/R/lib\n" > /etc/ld.so.conf.d/R.conf; \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y --no-install-recommends git librsvg2-bin pandoc python3 python3-pip python3-venv texlive; \
    BUILDDEPS="libcurl4-openssl-dev libfontconfig1-dev libpng-dev libssl-dev pkgconf zlib1g-dev"; \
    apt-get install -y --no-install-recommends $BUILDDEPS; \
    python3 -m venv /opt/radian; \
    /opt/radian/bin/python3 -m pip install --no-cache-dir radian; \
    install -m 0755 /opt/R/library -d; \
    printf 'options(renv.settings.external.libraries = c("/opt/R/library"))\n' >> /usr/local/lib/R/etc/Rprofile.site; \
    printf 'options(renv.settings.use.cache = FALSE)\n' >> /usr/local/lib/R/etc/Rprofile.site; \
    Rscript --no-save --no-restore \
    -e 'install.packages("renv")' \
    -e 'install.packages(c("httpgd", "languageserver", "lintr", "rmarkdown"), lib = "/opt/R/library")'; \
    apt-get remove --purge -y $BUILDDEPS; \
    apt-get autoremove --purge -y; \
    apt-get autoclean -y; \
    rm -rf /var/lib/apt/lists/*

CMD ["/opt/radian/bin/python3", "-m", "radian", "--no-save", "--no-restore"]
