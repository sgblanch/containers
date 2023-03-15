#!/usr/bin/with-contenv bash

# Set rstudio's workspace directory to match docker's WORKDIR (if not /)

set -eu

if [[ "$(pwd)" != "/" ]]; then
  sed -i -e "\$a session-default-working-dir=$(pwd)" -e '/session-default-working-dir/d' /etc/rstudio/rsession.conf
fi
