#!/bin/sh

export DISPLAY=':0.0'
export XAUTHORITY='/home/mday/.Xauthority'

xsetroot -name "| CPU temp: $(sysctl hw.sensors | grep -i cpu0.temp0 | sed -e 's/.*temp0=\(.*\)degC.*/\1/')degC | $(date +%H:%M) | $(apm -l)% |"
