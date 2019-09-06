#!/bin/sh

. ./config

/usr/bin/ssh -o 'ExitOnForwardFailure yes' -N -T -C -R ${remote_port}:localhost:${local_port} ${remote_host}
