#!/usr/bin/bash

#********************************************
# Author      : lcdse7en                    *
# E-mail      : 2353442022@qq.com           *
# Create_Time : 2023-12-01 13:51:34         *
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

npm_Install_packages() {
    sudo npm install vscode-langservers-extracted -g
    sudo npm install @tailwindcss/language-server -g
}

main() {
    npm_Install_packages
}

main
