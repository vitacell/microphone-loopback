##!/bin/bash

if pactl list | grep -q "module-loopback";
then
     pactl unload-module module-loopback
     echo "Microphone loopback: DISABLED"
else
     pactl load-module module-loopback latency_msec=1
     echo "Microphone loopback: ENABLED"	
fi