#!/bin/bash

if [ $(sudo sv status bluetoothd | awk '{printf $1}' | wc -c) -eq 5 ]
then
  echo "󰂲"
else
  if [ $(bluetoothctl devices Connected | wc -c) -eq 0 ]
  then 
    echo ""
  fi
  echo "%{F#55A6DC}"
fi

