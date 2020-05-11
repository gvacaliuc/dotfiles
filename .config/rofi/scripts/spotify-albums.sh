#!/usr/bin/env bash

if [ -z $@ ]
then
    cat ~/.config/spotify/library.json | jq '.albums | map(.album) | .[]'
else
    # kill existing daemons
    ps aux | grep [t]izonia | cut -d" " -f2 | xargs kill -9

    # test?
    echo "$1" >> ~/tmp/spotify-albums

    # TODO: figure out why this errors... tizonia fails with "no such file or
    # directory"
    env >> ~/tmp/spotify-albums.err
    # start new daemon
    tizonia --spotify-album $1 >> ~/tmp/spotify-albums.err
fi 
