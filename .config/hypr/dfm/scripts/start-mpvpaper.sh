#!/usr/bin/env zsh

export WAYLAND_DISPLAY=${WAYLAND_DISPLAY:-wayland-1}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/run/user/$(id -u)}

# Kill existing mpvpaper processes by program name (exact match)
pkill -9 '^mpvpaper' 2>/dev/null || true

# short pause to let processes exit
sleep 0.2

# Start mpvpaper detached with no output recorded
mpvpaper -o 'no-audio --profile=high-quality shuffle --loop-file=inf' ALL /home/david/Pictures/Wallpapers/Live >/dev/null 2>&1 < /dev/null

exit 0
