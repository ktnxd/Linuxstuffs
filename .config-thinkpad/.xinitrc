#!/bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xset fp rehash
xsetroot -cursor_name left_ptr
mpd &
nitrogen --restore &
$HOME/.config/polybar/launch.sh &
sxhkd &
exec bspwm
