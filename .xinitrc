#xrandr --output DP2 --mode 1280x1024 --right-of HDMI1
#xrandr --output DP2 --mode 2560x1600

# Set up dual monitors at work.
xrandr --output DP2 --mode 2560x1600 --right-of HDMI1
xrandr --output HDMI1 --rotate left

# Screen mirroring to projector
xrandr --output VGA1 --mode 1024x768 --same-as LVDS1
