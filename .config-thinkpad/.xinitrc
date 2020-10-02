#!/bin/sh
xsetroot -cursor_name left_ptr &
nitrogen --restore &
picom &
mpd &
dunst &
exec bspwm
