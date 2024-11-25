# dotfiles

## Features

- Installs Homebrew
- Installs Applications
- Installs binaries
- Configures Zsh
- Configures macOS

## Usage

Run scripts:

```zsh
source scripts/bootstrap.sh
```

### Add a spacer to the dock

Left side:
```zsh
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
```

Right side:
```zsh
defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'
```

Then restart the dock:
```zsh
 killall Dock
 ```

## Resources

- [iTerm theme](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Framer.itermcolors)
- [Meslo Font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Meslo/L/Regular/complete/Meslo%20LG%20L%20Regular%20Nerd%20Font%20Complete%20Mono.ttf)
