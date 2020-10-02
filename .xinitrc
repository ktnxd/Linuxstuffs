#!/bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xsetroot -cursor_name left_ptr
picom -f &
mpd &
nitrogen --restore &
$HOME/.config/polybar/launch.sh &
sxhkd &
exec bspwm
