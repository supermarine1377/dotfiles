#!/bin/bash

# ANSI color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

colorize() {
    local color="$1"
    shift
    echo -e "${color}$@${NC}"
}

update_brew_dependencies() {
    echo -e "$(colorize $GREEN 'Updating brew dependencies')"
    brew bundle dump --force || {
        echo -e "$(colorize $RED 'Error updating brew dependencies')"
        exit 1
    }
    mv Brewfile brew
    echo -e "$(colorize $GREEN 'Updated brew dependencies successfully')"
}

copy_zsh_configurations() {
    echo -e "$(colorize $GREEN 'Copying zsh configurations')"
    cp ~/.zshrc zsh/ || {
        echo -e "$(colorize $RED 'Error copying zsh configurations')"
        exit 1
    }
    cp ~/.zprofile zsh/ || {
        echo -e "$(colorize $RED 'Error copying zsh configurations')"
        exit 1
    }
    echo -e "$(colorize $GREEN 'Copied zsh configurations successfully')"
}

update_vscode_configurations() {
    echo -e "$(colorize $GREEN 'Updating vscode configurations')"
    cp "$HOME/Library/Application Support/Code/User/settings.json" vscode/ || {
        echo -e "$(colorize $RED 'Error updating vscode configurations')"
        exit 1
    }
    code --list-extensions > vscode/extensions.txt
    echo -e "$(colorize $GREEN 'Updated vscode configurations successfully')"
}

main() {
    update_brew_dependencies
    copy_zsh_configurations
    update_vscode_configurations

    echo -e "$(colorize $GREEN 'Updated all dependencies successfully')"
}

main
