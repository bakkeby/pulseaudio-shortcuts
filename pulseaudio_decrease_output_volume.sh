#!/bin/sh
# Decreases the current audio output volume

SINK_ID=$(pactl list sinks short | awk '/RUNNING/ { print $1 }')
pactl set-sink-volume $SINK_ID '-5%'
