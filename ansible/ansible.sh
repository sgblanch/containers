#!/bin/bash

ansible-container() {
    local SAS="${SSH_AUTH_SOCK}"
    [[ "$(uname -s)" == "Darwin" ]] && SAS="/run/host-services/ssh-auth.sock"
    docker run \
        -e SSH_AUTH_SOCK=$SAS \
        -v $SAS:$SAS \
        -v $HOME/.ssh/known_hosts:/root/.ssh/known_hosts:ro \
        -v "$(pwd):/playbook" \
        -w /playbook \
        --rm \
        -it ansible:latest \
        "$@"
}

alias ansible='ansible-container ansible'
alias ansible-playbook='ansible-container ansible-playbook'



