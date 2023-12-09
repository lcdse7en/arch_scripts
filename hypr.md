### Hyprland

#### 1. Website
| website                                                | comment                             |
| ------------------------------------------------------ | ----------------------------------- |
| https://wiki.hyprland.org/                             | org wiki                            |
| https://github.com/hyprland-community/awesome-hyprland | hyprland list                       |
| https://arewewaylandyet.com/                           | wayland software                    |
| https://github.com/day0xy/hyprland-config              | one                                 |

#### 2. yay packages

- hyprland-hidpi-xprop-git
- xdg-desktop-portal-hyprland-git
- qt5-wayland
- qt6-wayland
- waybar-hyprland-git
- rofi-lbonn-wayland-git
- swaync-git
- hyprpaper-git
- cliphist
- wl-clipboard
- swaylock
- swayidle
- blueman
- nwg-look-bin
- qt5ct
- flat-remix
- flat-remix-gtk
- slurp
- grim
- grimblast-git
- wlr-randr
- pipewire
- wireplumber
- obs-studio
- xdg-desktop-portal-hyprland-git

#### 3. Environment

```conf
QT_QPA_PLATFORMTHEME=qt5ct
```

#### 4. hyprland.conf
```shell
# See https://wiki.hyprland.org/Configuring/Keywords/ for more

# For all categories, see https://wiki.hyprland.org/Configuring/Variables/
input {
    kb_layout = us
    kb_variant =
    kb_model =
    kb_options =
    kb_rules =

    follow_mouse = 1


    touchpad {

        natural_scroll = true
        disable_while_typing = true
    }

    sensitivity = 0.1
}


binds {

  allow_workspace_cycles = true
  workspace_center_on = 1


}




general {
    gaps_in = 5
    gaps_out = 12
    border_size = 0
    layout = dwindle

    resize_on_border = false
    no_cursor_warps = true
}




decoration {

    rounding = 20
    active_opacity = 1.0
    inactive_opacity = 1.0
    fullscreen_opacity = 1


    blur {
    enabled = true
    size = 3
    passes = 2
    new_optimizations = true
    }


    drop_shadow = false
    shadow_range = 20
    shadow_render_power = 2
    shadow_ignore_window = true
    col.shadow = rgba(1a1a1aee)
}


animations {
    enabled = false
    bezier = myBezier,  0.05, 0.9, 0.1, 1.05
    bezier = myBezier2, 0.12, 0.83, 0.09, 0.86
    bezier = myBezier3, 0.22, 0.77, 0.13, 0.76
    animation = windowsIn, 0, 5, myBezier
    animation = windowsMove, 0, 5,myBezier2
    animation = windowsOut, 0, 5, default, popin 60%
    animation = border, 0, 20, default
    animation = fade, 0, 4, default
    animation = workspaces, 0, 3, default,slide
}


misc {

vfr = 1
vrr = 1

animate_manual_resizes = false

force_hypr_chan =false
disable_hyprland_logo = true
force_default_wallpaper = 0

# focus_on_activate = false
focus_on_activate = true

always_follow_on_dnd  = true

animate_mouse_windowdragging  = false

mouse_move_enables_dpms = false
key_press_enables_dpms = true


allow_session_lock_restore = true



}

blurls = gtk-layer-shell
blurls = waybar

dwindle {
    # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
    pseudotile =  true # master switch for pseudotiling. Enabling is bound to SUPER + P in the keybinds section below
    preserve_split = true # you probably want this
    smart_resizing = true
    smart_split = true
    use_active_for_splits  = true
    default_split_ratio = 1.4
}

master {
    # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
    new_is_master = false
}

gestures {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more
    workspace_swipe = on
}




windowrulev2=float,title:^(.*?Octopi)$
windowrulev2=size 60%,title:^(.*?Octopi)$
windowrulev2=center,title:^(.*?Octopi)$

windowrulev2=float,title:^(octopi-sudo)$
windowrulev2=size 60%,title:^(0ctopi-sudo)$
windowrulev2=center,title:^(octopi-sudo)$

windowrule=float,^(Rofi)$

# for dolphin
windowrulev2=float,title:^(Downloads.*?Dolphin)$
windowrulev2=size 60%,title:^(Downloads.*?Dolphin)$
windowrulev2=center,title:^(Downloads.*?Dolphin)$

windowrulev2=float,title:^(KCalc)$
windowrulev2=size 40%,title:^(KCalc)$
windowrulev2=center,title:^(KCalc)$

windowrule=float,mpv
windowrule=center,mpv,title:^(.*?mpv)$
windowrulev2=size 50%,title:^(.*?mpv)$



windowrulev2=float,title:^(Oracle VM.*?)$
windowrulev2=size 60%,title:^(Oracle VM.*?)$
windowrulev2=center,title:^(Oracle VM.*?)$


windowrulev2=float,title:^(.*?Settings)$
windowrulev2=size 60%,title:^(.*?Settings)$
windowrulev2=center,title:^(.*?Settings)$

windowrulev2=float,title:^(.*?KFind)$
windowrulev2=size 60%,title:^(.*?KFind)$
windowrulev2=center,title:^(.*?KFind)$

windowrulev2=float,title:^(Bluetooth Devices)$
windowrulev2=size 60%,title:^(Bluetooth Devices)$
windowrulev2=center,title:^(Bluetooth Devices)$




# for kitty
windowrule=center,kitty
windowrule=float,kitty
windowrulev2=size 45%,class:^(kitty)$







windowrule=float,kate
windowrulev2=size 60%,title:^(.*?Kate)$
windowrulev2=center,title:^(.*?Kate)$



windowrule=float,kwrite
windowrulev2=size 60%,title:^(.*?KWrite)$
windowrulev2=center,title:^(.*?KWrite)$

windowrulev2=size 60%,title:^(.*?Gwenview)$
windowrulev2=center,title:^(.*?Gwenview)$
windowrulev2=float,title:^(.*?Gwenview)$


windowrulev2 = float,title:^(.*?KDE Agent)$
windowrule = float, pavucontrol
windowrule = center, pavucontrol
windowrulev2 = size 40%,title:^(Volume Control)$


bind = SUPER, RETURN, exec, kitty
bind = SUPER SHIFT, Q, killactive,
bind = SUPER SHIFT, M, exit,
bind = ALT, E,exec, dolphin
bind = ALT, C,exec,  chromium
bind = ALT SHIFT, C,exec, chromium --incognito
bind = ALT, G,exec,  google-chrome-stable
bind = ALT SHIFT, G,exec,  google-chrome-stable --incognito
bind = ALT, B,exec, firefox
bind = ALT SHIFT, B,exec, firefox --private-window
bind = ALT, T,exec, telegram-desktop
bind = ALT, V,exec,code
bind = ALT SHIFT, V,exec,virtualbox
bind = ALT,J, exec ,joplin-desktop
bind = ALT,S, exec ,superproductivity



bind=SUPER,TAB,workspace,previous
# alt+tab to switch window
# bind = ALT, Tab, cyclenext,
# bind = ALT, Tab, bringactivetotop,

bind = ALT,O,exec,/usr/bin/octopi
bind = SUPER, D, exec, killall rofi || rofi -show drun -theme Arc-Dark -font "Serif 18" -show-icons
bind = SUPER, S, exec, killall rofi || rofi -show window  -theme Arc-Dark -font "Serif 18" -show-icons
# Layouts
bind = SUPER, J, togglesplit, # dwindle
bind = SUPER, V, togglefloating,
bind = SUPER, F, fullscreen, 0

# Move focus with vim bindings
bind = SUPER, L, movefocus, l
bind = SUPER, H, movefocus, r
bind = SUPER, J, movefocus, u
bind = SUPER, K, movefocus, d

Move window with vim bindings
bind = SUPER SHIFT, L, movewindow, r
bind = SUPER SHIFT, H, movewindow, l
bind = SUPER SHIFT, J, movewindow, d
bind = SUPER SHIFT, K, movewindow, u

Resize with vim bindings
bind = SUPER CTRL, L, resizeactive, 90 0
bind = SUPER CTRL, H, resizeactive, -90 0
bind = SUPER CTRL, J, resizeactive, 0 90
bind = SUPER CTRL, K, resizeactive, 0 -90


# Switch workspaces with SUPER + [0-9]
bind = SUPER, 1, workspace, 1
bind = SUPER, 2, workspace, 2
bind = SUPER, 3, workspace, 3
bind = SUPER, 4, workspace, 4
bind = SUPER, 5, workspace, 5
bind = SUPER, 6, workspace, 6
bind = SUPER, 7, workspace, 7
bind = SUPER, 8, workspace, 8
bind = SUPER, 9, workspace, 9
bind = SUPER, 0, workspace, 10

# Move active window to a workspace with SUPER + SHIFT + [0-9]
bind = SUPER SHIFT, 1, movetoworkspace, 1
bind = SUPER SHIFT, 2, movetoworkspace, 2
bind = SUPER SHIFT, 3, movetoworkspace, 3
bind = SUPER SHIFT, 4, movetoworkspace, 4
bind = SUPER SHIFT, 5, movetoworkspace, 5
bind = SUPER SHIFT, 6, movetoworkspace, 6
bind = SUPER SHIFT, 7, movetoworkspace, 7
bind = SUPER SHIFT, 8, movetoworkspace, 8
bind = SUPER SHIFT, 9, movetoworkspace, 9
bind = SUPER SHIFT, 0, movetoworkspace, 10

# Scroll through existing workspaces with SUPER + scroll
bind = SUPER, mouse_down, workspace, e-1
bind = SUPER, mouse_up, workspace, e+1

# # Scroll through workspaces
# bind = SUPER, bracketleft, workspace, e-1
# bind = SUPER, bracketright, workspace, e+1

# Move/resize windows with SUPER + LMB/RMB and dragging
bindm = SUPER, mouse:272, movewindow
bindm = SUPER, mouse:273, resizewindow

# 截图
bind = SUPER SHIFT,S,exec,hyprshot -m region -o ~/Pictures/
bind = SUPER SHIFT,A,exec,hyprshot -m window  -o ~/Pictures/
bind = SUPER SHIFT,D,exec,hyprshot -m output  -o ~/Pictures/



# 亮度
bind = ALT,U,exec,light -U 3
bind = ALT,A,exec,light -A 3

# 锁屏
bind = CTRLALT,L,exec,swaylock -i ~/.wallpaper/swaylock.png



# autostart apps
exec-once= [workspace 1 silent] firefox
# exec-once= [workspace 2 silent] goland
# exec-once= [workspace 4 silent] okular
# exec-once= [workspace 5 silent] joplin-desktop

# windowrulev2 = workspace 1,class:^(firefox)$



# 自启动程序
exec-once = hyprpaper &
exec-once = nm-applet --indicator &
exec-once = waybar &
exec-once = fcitx5 &
exec-once = slimbookbattery --minimize &

exec-once = /usr/lib/polkit-kde-authentication-agent-1 &
exec-once = blueman-applet &
exec-once = wl-paste --watch cliphist store
exec-once = bash ~/.config/hypr/scripts/touchpad.sh &


# 空闲监测，自动关屏幕
exec-once = swayidle -w timeout 300 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on ;swaylock -i ~/.wallpaper/swaylock.png '
# exec-once = swayidle -w timeout 300 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'
# 这玩意阻止看视频或听音乐时的swayidle操作
exec-once = sway-audio-idle-inhibit &




# super+c可以打开剪贴板
bind = SUPER, C, exec, cliphist list | rofi -dmenu -theme Arc-Dark -font "Serif 16"  | cliphist decode | wl-copy



# 用来开关触控板，我的笔记本上没有按键来关闭，只能用脚本来自动关
# bind = SUPER SHIFT,T,exec,bash ~/.config/hypr/scripts/touchpad.sh



# 用来清理剪贴板历史的，   super+shift+c清理历史               super+c可以打开剪贴板
bind = SUPER SHIFT, C, exec,rm ~/.cache/cliphist/db




bind = ALT,I,exec,intellij-idea-ultimate-edition
bind = ALT,D,exec,goland
bind = ALT,P,exec,pycharm


# bind = ALT, M,exec,mousepad
bind = ALT, K,exec,kwrite
bind = ALT, H,exec,kitty  htop
bind = ALT, L,exec,localsend

# bind = SUPER, N, exec,bash ~/.config/hypr/scripts/battery-mode.sh
# bind = SUPER, R, exec,hyprctl reload


# 键盘上的一些案件，比如音量调节，屏幕亮度调节
bindle=,XF86MonBrightnessUp,exec,light -A 3
bindle=,XF86MonBrightnessDown,exec,light -U 3
bind = , XF86AudioRaiseVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ +5%
bind = , XF86AudioLowerVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ -5%

bind = , XF86AudioMute, exec, pactl set-sink-mute @DEFAULT_SINK@ toggle
bind = , XF86AudioMicMute, exec, pactl set-source-mute @DEFAULT_SOURCE@ toggle


# 一些环境变量
env = VDPAU_DRIVER,radeonsi
env = LIBVA_DRIVER_NAME,radeonsi
env = MOZ_DRM_DEVICE,/dev/dri/renderD128

env = XDG_CURRENT_DESKTOP,Hyprland
env = XDG_SESSION_TYPE,wayland
env = XDG_SESSION_DESKTOP,Hyprland




# 显示器
monitor=,highres,auto,1
```

#### 5. hyprpaper.conf
```shell
preload = /home/day0xyz1/.wallpaper/shipAndSea.jpg
wallpaper = eDP-1,/home/day0xyz1/.wallpaper/shipAndSea.jpg
ipc = off
```

#### 6. scripts
1. XDPH.sh

```shell
#!/bin/bash

sleep 1
killall xdg-desktop-portal-hyprland
killall xdg-desktop-portal-wlr
killall xdg-desktop-portal
/usr/lib/xdg-desktop-portal-hyprland &
sleep 2
/usr/lib/xdg-desktop-portal &
```
```conf
exec-once = bash  ~/.config/hypr/scripts/XDPH.sh &
```





















