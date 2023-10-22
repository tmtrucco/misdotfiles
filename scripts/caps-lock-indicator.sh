#! /bin/bash

stty -icanon time 0 min 0

while true; do
	read input

	if ["$input" = "Caps Lock:"]; then
		if [[ $(xset q | grep -oE "00: Caps Lock:[ ]{1,20}o[fn]{1,2}" | grep -oE "o[fn]{1,2}") == "on" ]]; then

		notify-send -i keyboard -t 2000 "Caps Lock" "On"

# USE UTILITY TO FLASH CAPS LOCK ON IMAGE UP ON SCREEN HERE

		else

		notify-send -i keyboard -t 2000 "Caps Lock" "Off"
	
		fi
	fi
# USE UTILITY TO FLASH CAPS LOCK OFF IMAGE UP ON SCREEN HERE
done

stty sane

trap control_c SIGINT

control_c()
{
    stty sane
}

sleep 0.2
