setxkbmap -option ctrl:swapcaps
setxkbmap -option altwin:swap_alt_win
export DWM=~/workspace/dwm
#export LANG=zh_CN.UTF-8
#export LANGUAGE=zh_CN:en_US
export QT_QPA_PLATFORMTHEME=qt6ct
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export INPUT_METHOD=fcitx
export GLFW_IM_MODULE=ibus
Xcursor.theme:Breeze_Light
xrdb -merge ~/.Xresources
fcitx5 &
# set desktop background with custom effect
betterlockscreen -w dim

# Alternative (set last used background)
source ~/.fehbg
exec dwm
