#!/bin/bash

if [[ $(wpa_cli status | wc -l) -eq 4 ]]
then
	echo "󰖪"
else
	echo "󰖩"
fi

