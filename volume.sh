#!/bin/sh
level=$(pactl list sinks | grep '^[[:space:]]Volume:' | \
  head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
status=$(pacmd list-sinks | grep -A 15 '* index'|awk '/muted:/{ print $2 }' | sed "s/no/S/; s/yes/Ꞩ/"; exit)
printf " %s:%s \\n" "$status" "$level" ;
