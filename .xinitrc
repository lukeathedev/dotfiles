#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# set keyboard repeat rate
xset r rate 200 30

# setxkbmap -layout dvorak,br -variant abnt2 -option grp:win_space_toggle,caps:escape &
setxkbmap -layout dvorak -option caps:escape
imwheel -b 45 &

pulseeffects --gapplication-service &

xscreensaver -no-splash &
redshift -c .config/redshift/redshift.conf &
# picom --vsync --backend glx &
picom --experimental-backends &
~/.fehbg &
# /usr/bin/emacs --daemon &
exec i3
