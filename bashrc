# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep bspwm || startx "XDG_CONFIG_HOME~/.xinitrc"
fi

alias xev='xev | awk -F'\''[ )]+'\'' '\''/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'\'''

alias vim=nvim

alias mpvcd='mpv -fs cdda://' 

alias mpvdvd='mpv dvd://'

alias syncthing='./syncthing/syncthing'

. "$HOME/.cargo/env"

