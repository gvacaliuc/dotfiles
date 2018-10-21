#!/bin/bash

source ~/.localrc

if [ -z $@ ]
then
function get_classes()
{

    #   Fail if $CURRENT_SEMESTER isn't defined to an existing directory.
    if [[ ! -f ~/.launchdirs ]]
    then
        exit 1;
    fi

    cat ~/.launchdirs | xargs -I{} find {} \
        -mindepth 1 \
        -maxdepth 1 \
        -type d #\
        #-exec basename {} \;
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
