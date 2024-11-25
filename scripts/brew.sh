#!/usr/bin/env bash

sudo -v

# Install/update Homebrew
if test ! $(which brew); then
  echo "Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Updating Homebrew..."
  brew update
fi

echo "Installing formulae..."

# Install GNU utilities
# brew install coreutils
# brew install moreutils
# brew install findutils

# Web runtimes
# brew install nginx
# brew install postgresql
# brew install redis

# Install font tools
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries
brew install ack
brew install gpg
brew install git
brew install git-lfs
brew install graphicsmagick
brew install grep
brew install imagemagick
brew install openssl
brew install thefuck
brew install tree
brew install wget

# Remove outdated versions from the cellar
brew cleanup
