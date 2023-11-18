#!/usr/bin/bash

#********************************************
# Author      : lcdse7en
# E-mail      : 2353442022@qq.com
# Create_Time : 2023-10-04 16:38
# Description :
#********************************************

# source /etc/profile.d/import_shell_libs.sh

RED=$(printf '\033[31m')
GREEN=$(printf '\033[32m')
YELLOW=$(printf '\033[33m')
BLUE=$(printf '\033[34m')
SKYBLUE=$(printf '\033[36m')
BOLD=$(printf '\033[1m')
RESET=$(printf '\033[m')

Install_ohmyzsh() {
    printf "${YELLOW}%s"
    read -r -p "Do you want to Install oh-my-zsh on you machine? [y/N] " answer
    printf "${RESET}%s"

    if [[ "$answer" != y ]] && [[ "$answer" != Y ]]; then
        printf "${RED}%s"
        printf "Skipping install oh-my-zsh on your machine.\n"
        printf "${RESET}%s"
    else
        sh "$HOME"/dotfiles/se7en-doc_and_scripts/archlinux-doc-and-scripts/arch_scripts/ohmyzsh/install-ohmyzsh.sh
        sudo rm -rf "$HOME"/.zshrc >/dev/null
        cd "$HOME"/dotfiles || exit
        stow zsh
    fi
}

Install_plugins() {
    printf "${YELLOW}%s\n"
    read -r -p "Configure oh-my-zsh, Download ohmyzsh plugins? [y/N] " answer
    printf "${RESET}%s"

    if [[ "$answer" != y ]] && [[ "$answer" != Y ]]; then
        printf "${RED}%s"
        printf "Skipping download ohmyzsh plugins.\n"
        printf "${RESET}%s\n"
    else
        local autosuggestions_dir="$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
        local highlighting_dir="$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
        local autojump_dir="$HOME/.oh-my-zsh/custom/plugins/autojump"
        local vimode_dir="$HOME/.oh-my-zsh/custom/plugins/zsh-vi-mode"
        local you_should_use="$HOME/.oh-my-zsh/custom/plugins/you-should-use"
        local zsh_history_substring_search="$HOME/.oh-my-zsh/custom/plugins/zsh-history-substring-search"

        #  NOTE: zsh-autosuggestions
        if [[ -d "$autosuggestions_dir" ]]; then
            printf "${RED}%s"
            printf 'Directory: %s exists...\n' "$autosuggestions_dir"
            printf "${RESET}%s\n"
        else
            printf "$YELLOW%s$RESET\n" "zsh-autosuggestions ..."
            printf "$SKYBLUE*%.0s" {1..50}
            printf "\n"
            git clone https://github.com/zsh-users/zsh-autosuggestions.git \
                "$HOME"/.oh-my-zsh/custom/plugins/zsh-autosuggestions
        fi
        #  NOTE: zsh-syntax-highlighting
        if [[ -d "$highlighting_dir" ]]; then
            printf "${RED}%s"
            printf 'Directory: %s exists...\n' "$highlighting_dir"
            printf "${RESET}%s\n"
        else
            printf "$YELLOW%s$RESET\n" "Downloading zsh-syntax-highlighting ..."
            printf "$SKYBLUE*%.0s" {1..50}
            printf "\n"
            git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
                "$HOME"/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
        fi
        #  NOTE: autojump
        if [[ -d "$autojump_dir" ]]; then
            printf "${RED}%s"
            printf 'Directory: %s exists...\n' "$autojump_dir"
            printf "${RESET}%s\n"
        else
            printf "$YELLOW%s$RESET\n" "Downloading autojump ..."
            printf "$SKYBLUE*%.0s" {1..50}
            printf "\n"
            git clone https://github.com/wting/autojump.git \
                "$HOME"/.oh-my-zsh/custom/plugins/autojump
        fi
        #  NOTE: zsh-vi-mode
        if [[ -d "$vimode_dir" ]]; then
            printf "${RED}%s"
            printf 'Directory: %s exists...\n' "$vimode_dir"
            printf "${RESET}%s\n"
        else
            printf "$YELLOW%s$RESET\n" "Downloading zsh-vi-mode ..."
            printf "$SKYBLUE*%.0s" {1..50}
            printf "\n"
            git clone https://github.com/jeffreytse/zsh-vi-mode.git \
                "$HOME"/.oh-my-zsh/custom/plugins/zsh-vi-mode
            # ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode
        fi
        #  NOTE: you-should-use
        if [[ -d "$you_should_use" ]]; then
            printf "${RED}%s"
            printf 'Directory: %s exists...\n' "$you_should_use"
            printf "${RESET}%s\n"
        else
            printf "$YELLOW%s$RESET\n" "Downloading you-should-use ..."
            printf "$SKYBLUE*%.0s" {1..50}
            printf "\n"
            git clone https://github.com/MichaelAquilina/zsh-you-should-use.git \
                "$HOME"/.oh-my-zsh/custom/plugins/you-should-use
            # ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode
        fi
        #  NOTE: zsh-history-substring-search
        if [[ -d "$zsh_history_substring_search" ]]; then
            printf "${RED}%s"
            printf 'Directory: %s exists...\n' "$zsh_history_substring_search"
            printf "${RESET}%s\n"
        else
            printf "$YELLOW%s$RESET\n" "Downloading zsh-history-substring-search ..."
            printf "$SKYBLUE*%.0s" {1..50}
            printf "\n"
            git clone https://github.com/zsh-users/zsh-history-substring-search.git \
                "$HOME"/.oh-my-zsh/custom/plugins/zsh-history-substring-search
            # ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode
        fi
    fi
}

Install_themes() {
    printf "${YELLOW}%s"
    read -r -p "Configure oh-my-zsh, Download powerleverl10k themes? [y/N] " answer
    printf "${RESET}%s"

    if [[ "$answer" != y ]] && [[ "$answer" != Y ]]; then
        printf "${RED}%s"
        printf "Skipping download powerleverl10k themes.\n"
        printf "${RESET}%s"
    else
        local powerlevel10k_dir="$HOME/.oh-my-zsh/custom/themes/powerlevel10k"

        if [[ -d "$powerlevel10k_dir" ]]; then
            printf "${RED}%s"
            printf '\nDirectory %s exists...\n' "$powerlevel10k_dir"
            printf "${RESET}%s"
        else
            printf "$YELLOW%s$RESET\n" "Downloading powerlevel10k ..."
            printf "$SKYBLUE*%.0s" {1..50}
            printf "\n"
            git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
                "$HOME"/.oh-my-zsh/custom/themes/powerlevel10k
        fi
    fi
}

main() {
    Install_ohmyzsh
    Install_plugins
    Install_themes
}

main
