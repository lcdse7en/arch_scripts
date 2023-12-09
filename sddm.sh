#!/usr/bin/bash

#********************************************
# Author      : lcdse7en                    *
# E-mail      : 2353442022@qq.com           *
# Create_Time : 2023-12-09 04:01:27         *
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

Install_sddm() {
    array=(
        sddm
        sddm-kcm
        plasma
        gst-libav
        phonon-qt5-gstreamer
        gst-plugins-good
    )
    for element in "${array[@]}"; do
        installed=$(sudo pacman -Qs "$element")
        if [[ ! $installed ]]; then
            printf "$SKYBLUE%s $element ...$RESET\n" "Installing"
            sudo pacman -S "$element" --noconfirm
        else
            printf "$RED$element %s$RESET\n" "has been installed on your machine."
        fi
    done
}

Install_themes() {
    local downloadpath="$HOME/Downloads"
    local targetDir="/usr/share/sddm/themes/aerial-sddm-theme"

    if [[ ! -d "$targetDir" ]]; then
        cd "$downloadpath" || exit
        git clone https://github.com/3ximus/aerial-sddm-theme.git
        sudo mv aerial-sddm-theme $targetDir
    else
        printf "\n$BLUE$targetDir/aerial-sddm-theme exies.%s$RESET\n"
    fi

}

Test_sddm() {
    sddm-greeter --test-mode --theme aerial-sddm-theme
}

Systemctl() {
    # sudo systemctl disable sddm
    sudo systemctl enable sddm
    sudo systemctl start sddm
}

Edit_conf() {
    confpath="/usr/lib/sddm/sddm.conf.d"
    cd "$confpath" || exit
    sudo sed -i 's/^User=/User=se7en/g' default.conf
    sudo sed -i 's/^Numlock=none/Numlock=on/g' default.conf
    sudo sed -i 's/^Current=/Current=aerial-sddm-theme/g' default.conf
    sudo sed -i 's/^EnableHiDPI=false/EnableHiDPI=true/g' default.conf
}

main() {
    Install_sddm
    Install_themes

    # Test_sddm

    Systemctl
    # Edit_conf
}

main
