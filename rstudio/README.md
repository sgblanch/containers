# RStudio Server

## Unmodified `rocker/verse:4.2.2`

> ## Note ##
> Must ship `workspace.sh` in addition to `docker-compose.yml`

```console
$ docker compose up
$ open http://localhost:8787
```

```R
install.packages("renv")
renv::init(bare = TRUE, bioconductor = TRUE)
renv::install("BiocManager")
BiocManager("msa", update = FALSE, ask = FALSE)
renv::snapshot()
```

## Custom Image

> ## Note ##
> Self-contained if built container pushed to a registry

```console
$ docker pull rocker/verse:4.2.2
$ docker build --progress=plain --build-arg R_VERSION=4.2.2 -t rstudio:custom .
$ alias rstudio='docker run -tv "$(pwd):/workspace" -w /workspace -p 127.0.0.1:8787:8787 rstudio:custom'
```

```R
renv::init(bare = TRUE, bioconductor = TRUE)
renv::install("BiocManager")
BiocManager::install("msa", update = FALSE, ask = FALSE)
renv::snapshot()
```

## TODO

- What about `renv`'s cache (`/home/rstudio/.cache`)?
- `renv` directory requires `sudo` to `rm` on macos
