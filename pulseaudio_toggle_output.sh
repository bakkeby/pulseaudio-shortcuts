#!/bin/sh
# Toggles audio output, e.g. headphones <--> speakers
# If there are more than two outputs, then the next
# one will be chosen randomly.

pactl list short sink-inputs | awk 'BEGIN {
	cmd="pactl list sinks short | grep -v RUNNING | shuf -n 1 | cut -f 1";
	while ( ( cmd | getline sink_id ) > 0 ) {}
} {
	system("pacmd set-default-sink " sink_id)
	system("pactl move-sink-input " $1 " " sink_id)
}'
