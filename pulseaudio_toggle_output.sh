#!/bin/sh
# Toggles audio output, e.g. headphones <--> speakers
#
# Note that changing the output sink through the  command line
# interface can only take effect if stream target device reading
# is disabled which can be achieved by editing the corresponing
# line in /etc/pulse/default.pa to:
#    load-module module-stream-restore restore_device=false
#

SINK=$(pactl info | awk '/Default Sink/ { print $NF }')
NEXT=$(pactl list short sinks | awk -vSINK="$SINK" '
	NR == 1 || PREVIOUS_SINK == SINK {
		NEXT=$1
	}
	{
		PREVIOUS_SINK=$2
	}
	END {
		print NEXT
	}
')

for INPUT in $(pactl list short sink-inputs | cut -f 1); do
	pacmd set-default-sink $NEXT
	pactl move-sink-input $INPUT $NEXT
done