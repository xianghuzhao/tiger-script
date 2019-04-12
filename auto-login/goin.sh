#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 PARAMFILE" >&2
  exit 1
fi

paramfile=$1
echo "Open $paramfile"

ls $paramfile
. "$paramfile"

host=$(shuf -n1 -e $hosts)

cd $(dirname "$0")

./autossh.expect "$user@$host" "$password" "$inside_host" "$inside_password"
