#!/usr/bin/env bash

if [ -z $@ ]
then
    pactl list short sinks | sed 's/\s/ /g' | cut -d" " -f2
else
    newSink="$1"

    pactl list short sink-inputs|while read stream; do
        streamId=$(echo $stream|cut '-d ' -f1)
        pactl move-sink-input "$streamId" "$newSink"
    done
fi
