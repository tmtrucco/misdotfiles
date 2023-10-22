#!/bin/bash
if [[ $(sudo sv status bluetoothd | awk '{printf $1}' | wc -c) -eq 5 ]]
then
	echo "$(sudo sv up bluetoothd)"
else
	echo "$(sudo sv down bluetoothd)"
fi
