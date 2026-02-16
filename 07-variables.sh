#!/bin/bash

STRT_TIME=$(date %s) #%s will calculate the time in seconds

echo "script executed at: $STRT_TIME"

sleep 10

END_TIME=$(date %s)

EXE_DUR=$(($STRT_TIME-$END_TIME))

echo "Script executed in: $EXE_DUR seconds"