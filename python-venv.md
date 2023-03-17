# Python `venv`

```console
$ docker run -it -v "$(pwd):/venv" -w /venv python:alpine python -m venv .
$ docker run -it -v "$(pwd):/venv" -w /venv python:alpine bin/python3 -m pip install --no-cache-dir passlib
$ docker run -it -v "$(pwd):/venv" -w /venv python:alpine bin/python3
>>>
$ docker run -it -v "$(pwd):/venv" -w /venv -e ENV=bin/activate python:alpine sh
(venv) /venv #
```
