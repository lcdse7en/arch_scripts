#!/usr/bin/bash

#********************************************
# Author      : lcdse7en                    *
# E-mail      : 2353442022@qq.com           *
# Create_Time : 2023-11-04 15:00            *
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

clone_repo() {
    local target_dir="$HOME/github_upload"
    array=(
        arch_scripts
        chrome_extensions
        mygh
        texdata1
        texdata2
        accounting
        financial_statement
        Music
        lyrics
        korean
        pandas
        os
        contact
        tang-poetry
        country_list
        dkenlive
    )
    if [[ -d "$target_dir" ]]; then
        cd "$target_dir" || exit

        printf "${SKYBLUE}%s"
        printf "*%.0s" {1..60}
        printf "${RESET}%s\n"
        printf "$YELLOW target dir: $target_dir %s$RESET\n"
        printf "${SKYBLUE}%s"
        printf "*%.0s" {1..60}
        printf "${RESET}%s\n"

        for element in "${array[@]}"; do
            if [[ ! -d "$target_dir/$element" ]]; then
                printf "\n$YELLOW cloning $element to $target_dir/$element ... %s$RESET\n"
                git clone git@github.com:lcdse7en/"$element".git
            else
                printf "$RED$target_dir/$element exist %s\n$RESET"
            fi
        done
    fi
}

main() {
    clone_repo
}
main
