#!/bin/sh

/usr/bin/ssh -o 'ExitOnForwardFailure yes' -N -T -C -R 22222:localhost:22 tunnel
