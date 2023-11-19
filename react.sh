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

target_dir="$HOME/github_upload/react-project"

client() {
    cd "$target_dir" || exit

    npm create vite@latest
    read -r -p "Enter Project Name: " -e projectName
    cd "$target_dir/$projectName" || exit
    npm install
    npm i react-redux \
        @reduxjs/toolkit \
        react-router-dom \
        @mui/material \
        @emotion/react \
        @emotion/styled \
        @mui/icons-material \
        @mui/x-data-grid
    npm i recharts
    npm i regression
    npm i -D @types/react-dom
    npm i -D @types/node
    npm i -D eslint eslint-config-react-app
    npm i -D @types/regression
}

server() {
    cd "$target_dir" || exit
    local server_dir="$target_dir/server"

    if [[ -d "$server_dir" ]]; then
        printf "${RED}Delete $server_dir now and recreate it.%s${RESET}\n"
        rm -rf server

        mkdir server
        cd "$server_dir" || exit
        npm init -y
        npm i express body-parser cors dotenv helmet morgan mongoose mongoose-currency
        npm i -D nodemon
    else
        mkdir server
        cd "$server_dir" || exit
        npm init -y
        npm i express body-parser cors dotenv helmet morgan mongoose mongoose-currency
        npm i -D nodemon
    fi
}

flyio() {
    curl -L https://fly.io/install.sh | sh
}

main() {
    # client
    server
    # flyio
}

main
