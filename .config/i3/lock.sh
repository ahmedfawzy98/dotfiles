#!/bin/bash
#scrot /tmp/screen.png
#convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
#[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
#dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
#i3lock -u -i /tmp/screen.png
#rm /tmp/screen.png


TMPBG=/tmp/screen.png
LOCK=$HOME/lock.png
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')
ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $LOCK  -filter_complex "boxblur=10:1,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG -loglevel quiet
i3lock -i $TMPBG
rm $TMPBG
