#!/usr/bin/bash

#********************************************
# Author      : lcdse7en                    *
# E-mail      : 2353442022@qq.com           *
# Create_Time : 2023-11-17 16:30            *
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

create_project() {
    local target_dir="$HOME/github_upload/react-project"
    cd "$target_dir" || exit

    npm create vite@latest
    read -r -p "Enter Project Name: " -e projectName
    cd "$target_dir/$projectName" || exit
    npm install
    npm i react-redux @reduxjs/toolkit react-router-dom @mui/material @emotion/react @emotion/styled @mui/icons-material @mui/x-data-grid
    npm i -D @types/react-dom
    npm i -D @types/node
}

main() {
    create_project
}

main
