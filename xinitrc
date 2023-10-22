# Poner siempre '&' despues de un comando 

sudo hwclock --localtime -hctosys &

setxkbmap -option ctrl:nocaps &

setxkbmap -model pc86 -layout latam &

sudo thermald --adaptive &

feh --bg-max ~/.wallpapers/glitchwave.jpg &

sxhdc &

xrdb ~/.Xresources &

xsettingsd &

udiskie --automount --notify --tray &

light -S 30 &

xinput set-prop 10 316 1 &

exec dbus-run-session -- bspwm

exec bspwm

