#!/bin/bash
scrot ~/.config/i3/screenshot.png
convert ~/.config/i3/screenshot.png -blur 8x8 ~/.config/i3/lockscreen.png
i3lock -i ~/.config/i3/lockscreen.png -f -I 15

