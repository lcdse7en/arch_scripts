#!/usr/bin/bash

#********************************************
# Author      : lcdse7en                    *
# E-mail      : 2353442022@qq.com           *
# Create_Time : 2023-11-25 14:04            *
# Description :                             *
#********************************************

# source /etc/profile.d/import_shell_libs.sh

RED=$(printf '\033[31m')
GREEN=$(printf '\033[32m')
YELLOW=$(printf '\033[33m')
BLUE=$(printf '\033[34m')
SKYBLUE=$(printf '\033[36m')
BOLD=$(printf '\033[1m')
RESET=$(printf '\033[m')

targetDir="$HOME/Downloads"

Install-script-fu() {
    cd "$targetDir" || exit

    git clone https://github.com/script-fu/script-fu.github.io
    cd "$targetDir/script-fu.github.io/procedures" || exit
    sudo cp ./* "/usr/share/gimp/2.0/scripts/"
}

Install-icon-theme() {
    cd "$targetDir" || exit
    local icontheme="$targetDir/GIMP-IconThemes"

    if [[ -d "$icontheme" ]]; then
        cd "$icontheme" || exit
        sudo cp -r BlenderIcons "/usr/share/gimp/2.0/icons/"
    else
        git clone https://github.com/Uzugijin/GIMP-IconThemes
        cd "$icontheme" || exit
        sudo cp -r BlenderIcons "/usr/share/gimp/2.0/icons/"
    fi
}

Install-theme() {
    cd "$targetDir" || exit
    local themes="$targetDir/gimp"

    if [[ -d "$themes" ]]; then
        cd "$themes" || exit
        sudo cp -r Dracula "/usr/share/gimp/2.0/themes/"
    else
        git clone https://github.com/dracula/gimp
        cd "$themes" || exit
        sudo cp -r Dracula "/usr/share/gimp/2.0/themes/"
    fi
}

main() {
    # Install-script-fu
    Install-icon-theme
    Install-theme
}

main
