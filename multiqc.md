# multiqc

- Pulled straight from [manual](https://multiqc.info/docs/#using-the-docker-container)

```console
$ docker pull ewels/multiqc:latest
$ alias multiqc='docker run -tv "$(pwd)":/data -w /data -u $(id -u):$(id -g) ewels/multiqc:latest'
```
