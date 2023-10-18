# Ansible

```console
$ docker build -t ansible:latest .
$ ansible-container() {
    if [[ -z "$(docker ps -aqf name=ansible)" ]]; then
        local SAS="${SSH_AUTH_SOCK}"
        [[ "$(uname -s)" == "Darwin" ]] && SAS="/run/host-services/ssh-auth.sock"
        docker run --name ansible \
            -e SSH_AUTH_SOCK=$SAS \
            -v $SAS:$SAS \
            -v $HOME/.ssh/known_hosts:/root/.ssh/known_hosts:ro \
            -v "$(pwd):/playbook" \
            -w /playbook -itd ansible:latest > /dev/null
    fi
    docker exec -it ansible "$@"
}
$ alias ansible='ansible-container ansible'
$ alias ansible-playbook='ansible-container ansible-playbook'
```

```
docker start <container-name/ID>
docker stop <container-name/ID>
docker start -ai container-id
```

"$(printf %s/.ssh/known_hosts $HOME :/root :ro)"
"$HOME/.ssh/known_hosts:/root/.ssh/known_hosts:ro"