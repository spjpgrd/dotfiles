#!/usr/bin/env bash

# Exit immediately if any command returns a non-zero exit status (i.e., encounters an error).
set -e

# Create directories
sudo mkdir -p "/usr/local/lib"
sudo mkdir -p "/usr/local/bin"

# Run scripts
sh scripts/symlink.sh
sh scripts/xcode.sh
sh scripts/brew.sh
sh scripts/brew-cask.sh
sh scripts/appstore.sh
sh scripts/zsh.sh
sh scripts/macos.sh

# Install Iterm integration
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash

# Finish
source ~/.zshrc
echo "Done!"
