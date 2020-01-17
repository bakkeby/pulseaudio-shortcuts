#!/bin/sh
# Increases the current audio output volume

pactl set-sink-volume @DEFAULT_SINK@ '+5%'