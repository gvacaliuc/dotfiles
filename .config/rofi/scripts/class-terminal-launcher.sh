#!/bin/bash

source ~/.localrc

if [ -z $@ ]
then
function get_classes()
{

    #   Fail if $CURRENT_SEMESTER isn't defined to an existing directory.
    if [[ (! -d $CURRENT_SEMESTER) && ( "$CURRENT_SEMESTER" != "" ) ]]
    then
        exit 1;
    fi

    find $CURRENT_SEMESTER -mindepth 1 -maxdepth 1 -type d \
        -exec basename {} \;
}

get_classes
else
    CLASS=$@

    if [[ -d $CURRENT_SEMESTER/$CLASS ]]
    then
        gnome-terminal --working-directory $CURRENT_SEMESTER/$CLASS &
    else
        exit 1;
    fi
fi
