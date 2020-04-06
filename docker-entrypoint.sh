#!/bin/bash
set -e
GOSU="gosu peps"
# don't use gosu when id is not 0
if [ "$(id -u)" -ne "0" ];then
  GOSU=""
fi

if [[ "$1" == "peps-cli" || "$1" == "peps-tx" ]]; then
	exec $GOSU "$@"
else
  exec $GOSU "pepsd"
fi
