#!/bin/bash
set -xe

if [ -e /scripts/"$1" ]; then
    /scripts/"$@"
else
    "$@"
fi

