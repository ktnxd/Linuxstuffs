#!/bin/sh
xsetroot -cursor_name left_ptr &
nitrogen --restore &
picom &
exec bspwm
