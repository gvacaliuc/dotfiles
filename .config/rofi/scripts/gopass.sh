#!/usr/bin/env bash

if [ -z $@ ]
then
    gopass ls -f
else
    name="$1"

    gopass show "$name" -c
fi

