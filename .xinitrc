#!/bin/sh

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

# Variables
X_RESOURCES_SYS="/etc/X11/xinit/.Xresources"
X_RESOURCES_USER="${XDG_CONFIG_HOME}/.Xresources"

X_MODMAP_SYS="/etc/X11/xinit/.Xmodmap"
X_MODMAP_USER="${XDG_CONFIG_HOME}/.Xmodmap"

DIRCOLORS_SYS="/etc/DIR_COLORS"
DIRCOLORS_USER="${XDG_CONFIG_HOME}/.dircolors"

[[ -f "${X_RESOURCES_SYS}" ]] && xrdb -merge "${X_RESOURCES_SYS}"
[[ -f "${X_RESOURCES_USER}" ]] && xrdb -merge "${X_RESOURCES_USER}"

[[ -f "${X_MODMAP_SYS}" ]] && xmodmap "${X_MODMAP_SYS}"
[[ -f "${X_MODMAP_USER}" ]] && xmodmap "${X_MODMAP_USER}"

[[ -f "${DIRCOLORS_SYS}" ]] && dircolors -b "${DIRCOLORS_SYS}"
[[ -f "${DIRCOLORS_USER}" ]] && dircolors -b "${DIRCOLORS_USER}"

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


feh --bg-scale $HOME/Documents/Pictures/wallpaper.jpg
exec dwmblocks &
exec dunst &
exec redshift &
exec dwm

