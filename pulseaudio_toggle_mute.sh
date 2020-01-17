#!/bin/sh
# Mutes/unmutes the current audio output

pactl set-sink-mute @DEFAULT_SINK@ toggle