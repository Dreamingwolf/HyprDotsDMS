#!/usr/bin/zsh

# Force-kill all running mpvpaper instances, then start a fresh one.

pkill '^mpvpape'
sleep 0.2

# Start a fresh background instance detached from the terminal.
mpvpaper -o "no-audio --auto-stop --profile=high-quality shuffle --loop-file=inf" ALL /home/david/Pictures/Wallpapers/Live &
return 2> /dev/null; exit
