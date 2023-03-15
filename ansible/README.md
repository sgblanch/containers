# Ansible

```console
$ docker build -t ansible:alpine .
$ ansible-container() {
    local SAS="${SSH_AUTH_SOCK}"
    [[ "$(uname -s)" == "Darwin" ]] && SAS="/run/host-services/ssh-auth.sock"
    docker run -e SSH_AUTH_SOCK="${SAS}" -v "${SAS}:${SAS}" -v "$(pwd):/playbook" -w /playbook -it ansible:alpine "$@"
}
$ alias ansible='ansible-container ansible'
$ alias ansible-playbook='ansible-container ansible-playbook'
```
