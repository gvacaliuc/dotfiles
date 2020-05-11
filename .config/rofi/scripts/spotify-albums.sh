#!/usr/bin/env bash

if [ -z $@ ]
then
    cat ~/.config/spotify/library.json | jq '.albums | map(.album + ", " + .artist) | .[]'
else
    # selected album / artist pairing will be provided as input
    album="$1"

    # kill the existing daemon
    ps aux | grep [t]izonia | cut -d" " -f2 | xargs kill -9

    # start new daemon with album search
    tizonia --spotify-album "$album" --daemon
fi 
