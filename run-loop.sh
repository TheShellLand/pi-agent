#!/bin/bash
# run local pi agent in a loop 

SLEEP_SEC=1

if [ ! -z "$SLEEP" ]; then
  SLEEP_SEC="$SLEEP"
fi

while true; do 
  echo """+ pi -p "$1""""
  pi -p "$1"
  sleep $SLEEP_SEC
done
