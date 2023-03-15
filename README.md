# Random Docker Containers

- Collection of random Docker containers created for various purposes
- Mainly intended as an *aide-mémoire*; not for general consumption

## Maintenance

```console
$ docker system df
TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          17        5         4.839GB   4.373GB (90%)
Containers      6         5         3.524MB   1.421MB (40%)
Local Volumes   6         4         1.249GB   88B (0%)
Build Cache     68        0         886.4MB   886.4MB

$ docker builder prune
WARNING! This will remove all dangling build cache. Are you sure you want to continue? [y/N] y
Total reclaimed space: 886.4MB

$ docker container prune
WARNING! This will remove all stopped containers.
Are you sure you want to continue? [y/N] y
Total reclaimed space: 1.421MB

$ docker image prune
docker image prune
WARNING! This will remove all dangling images.
Are you sure you want to continue? [y/N] y
Total reclaimed space: 251.9MB
```
