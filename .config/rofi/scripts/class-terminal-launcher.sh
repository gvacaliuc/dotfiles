#!/usr/bin/env bash

if [ -z $@ ]
then
function get_classes()
{

    if [[ ! -f ~/.launchdirs ]]
    then
        exit 1;
    fi

    cat ~/.launchdirs | xargs -I{} find {} \
        -mindepth 1 \
        -maxdepth 1 \
        -type d
}

get_classes
else
    DIR=$@

    if [[ -d "$DIR" ]]
    then
        gnome-terminal --working-directory "$DIR" &
    else
        exit 1;
    fi
fi
