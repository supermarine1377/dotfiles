#!/bin/bash

update_brew_dependencies() {
    echo "Updating brew dependencies"
    brew bundle dump --force || exit 1
    mv Brewfile brew
    echo "Updated brew dependencies successfully"
}

copy_zsh_configurations() {
    echo "Copying zsh configurations"
    cp ~/.zshrc zsh/ || exit 1
    cp ~/.zprofile zsh/ || exit 1
    echo "Copied zsh configurations successfully"
}

update_vscode_configurations() {
    echo "Updating vscode configurations"
    cp "$HOME/Library/Application Support/Code/User/settings.json" vscode/ || exit 1
    code --list-extensions > vscode/extensions.txt
    echo "Updated vscode configurations successfully"
}

main() {
    update_brew_dependencies
    copy_zsh_configurations
    update_vscode_configurations

    echo "Updated all dependencies successfully"
}

main

