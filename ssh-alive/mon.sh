#!/bin/sh

cd $(dirname "$0")

all_pro=$(ps aux)
echo "$all_pro" | grep run_ssh_tunnel.sh

if [ $? != 0 ]; then
  date '+%Y-%m-%d %H:%M:%S.%N %z %Z' >> ssh-alive.log
  echo "Start run_ssh_tunnel again" >> ssh-alive.log
  echo '' >> ssh-alive.log

  ./run_ssh_tunnel.sh
fi
