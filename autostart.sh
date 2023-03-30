#!/bin/bash

# Network, Volume, and Battery Icons
nm-applet &
volumeicon &
cbatticon &

# Set the Wallpaper
feh --bg-scale /$HOME/wallpaper.png &

# Policykit (Needed for some apps)
lxqt-policykit-agent &

# Picom (Mainly for Vsync)
picom --backend glx --vsync &

# Notification Daemon
lxqt-notificationd &

# Xss-lock running betterlockscreen on systemd events (sleep, lid close)
# Note: You may have to uninstall light-locker on some systems
xss-lock -- "/usr/local/bin/betterlockscreen" -l &
