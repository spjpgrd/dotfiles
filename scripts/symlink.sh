#!/usr/bin/env bash

# Array of dotfiles that need to be symlinked to the home directory
sources=(
  .functions
  .gitconfig
  .hushlogin
  .zprofile
  .zshrc
)

# Loop through each file in the sources array
for i in ${sources[@]}; do
  target="$HOME/$i"
  if [ -L "$target" ]; then
    echo "ℹ️  Updating existing symlink for $i"
  elif [ -f "$target" ]; then
    echo "⚠️  Warning: $i already exists as a regular file in $HOME"
    read -p "Do you want to override it? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
      echo "Skipping $i"
      continue
    fi
  fi

  if ln -sf $(pwd)/$i $HOME; then
    echo "✓ Created symlink for $i"
  else
    echo "✗ Failed to create symlink for $i"
  fi
done

echo "\nSymlink creation complete! 🎉"
