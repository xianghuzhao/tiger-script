#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 PARAMFILE" >&2
  exit 1
fi

paramfile=$1

. "$paramfile"

host=$(shuf -n1 -e $hosts)

cd $(dirname "$0")

./autotunnel.expect "$user@$host" "$password"
