#!/usr/bin/env bash
set -e

echo "Setting up Homebrew Cask..."


# Install casks
echo "Installing casks..."

casks=(
  alfred@4
  figma
  firefox
  google-chrome
  imageoptim
  iterm2
  qlcolorcode
  qlimagesize
  qlstephen
  quicklook-json
  visual-studio-code
  webpquicklook
)

for c in ${casks[@]}; do
  brew install --cask --force --appdir="/Applications" $c
done

# Finalize
brew cleanup
