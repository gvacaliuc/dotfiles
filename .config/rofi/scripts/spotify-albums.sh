#!/usr/bin/env bash

if [ -z $@ ]
then
    cat ~/.config/spotify/library.json | jq '.albums | map(.album + ", " + .artist) | .[]'
else
    # selected album / artist pairing will be provided as input
    album="$1"

    count=0
    while [[ $(ps aux | grep [t]izonia) ]] && [ "$count" -lt "10" ]; do
        # kill the existing daemon
        ps aux | grep [t]izonia | cut -d" " -f2 | xargs kill -9
        count=$((count+1))
    done

    [ "$count" -eq 10 ] && \
        notify-send --urgency=low \
        "failed to kill tizonia daemon, please kill manually" && \
        exit

    # start new daemon with album search
    tizonia --spotify-album "$album" --daemon && \
        notify-send --urgency=low "now playing: $album"
fi 
