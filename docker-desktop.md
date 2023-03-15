# Docker Desktop

## Access Internal VM

```console
$ docker pull alpine:latest
$ docker run -it --rm --privileged --pid=host alpine:latest nsenter -t 1 -m -u -n -i sh
```
