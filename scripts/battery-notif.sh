#!/bin/bash

if [ $(acpi | awk -F% '{print $1}' | awk '{print $NF}') -lt 20 ]
then
	notify-send "Battery Low"
	light -S 10
else
	light -S 50
fi


