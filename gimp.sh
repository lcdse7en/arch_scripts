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
    pass
}

Install-icon-theme() {
    cd "$targetDir" || exit
    # git clone https://github.com/Uzugijin/GIMP-IconThemes
    cd "$targetDir/GIMP-IconThemes" || exit
    sudo cp -r BlenderIcons "/usr/share/gimp/2.0/icons/"
}

Install-theme() {
    cd "$targetDir" || exit

    git clone https://github.com/dracula/gimp
    cd "$targetDir/gimp" || exit
    sudo cp -r Dracula "/usr/share/gimp/2.0/themes/"

}

main() {
    # Install-script-fu
    # Install-icon-theme
    Install-theme
}

main
