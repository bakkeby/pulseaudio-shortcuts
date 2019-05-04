#!/bin/sh
# Mutes/unmutes the current audio output

SINK_ID=$(pactl list sinks short | awk '/RUNNING/ { print $1 }')
pactl list sinks | grep -q "Mute: yes"
pactl set-sink-mute $SINK_ID $?
