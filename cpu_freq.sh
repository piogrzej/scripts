#!/bin/bash

cpuFreq=$(lscpu | grep "CPU MHz" | awk '{print $3}' | cut -f1 -d".")
if [ $cpuFreq -ge 1000 ]
then
  cpu=$(echo $cpuFreq | cut -c1).$(echo $cpuFreq | cut -c2)GHz
else
  cpu=${cpuFreq}MHz
fi

printf "%s" $cpu
