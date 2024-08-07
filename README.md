
# `.zshrc` Configuration

This README provides an overview of my `.zshrc` file, which contains configurations, aliases, functions, and plugins to enhance the Zsh shell experience.

## Table of Contents

- [Installation](#installation)
- [Plugins](#plugins)
- [Aliases](#aliases)
- [Environment Variables](#environment-variables)
- [Custom Configurations](#custom-configurations)

## Installation

To use this `.zshrc` configuration, you can clone the repository and create a symbolic link to the `.zshrc` file:

```sh
git clone https://github.com/swgtds/zsh.git
ln -s ~/zsh/zshrc ~/.zshrc
source ~/.zshrc
```

## Plugins

This configuration uses the following plugins:

- [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting): Fast syntax highlighting for Zsh.
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): Fish-like autosuggestions for Zsh.
- [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete): Zsh autocomplete enhancements.

## Aliases

Below are some of the aliases included in the `.zshrc` file:

```sh
alias ls='exa'
alias ll='exa -lh'
alias lh='exa -lah'
alias lt='exa -T'
alias rcp='rsync --recursive --progress'
alias aria2c='aria2c -d $HOME/Downloads'

# Set display 1 (Laptop)
alias display-1='xrandr --output HDMI-1 --off
xrandr --output eDP-1 --auto
nitrogen --head=0 --set-zoom-fill $HOME/Pictures/Wallpapers/ocean-with-cloud.png'

# Set display 2
alias display-2='xrandr --output eDP-1 --off
xrandr --output HDMI-1 --auto
nitrogen --set-zoom-fill $HOME/Pictures/Wallpapers/ocean-with-cloud.png'

# Set Dual display
alias dual-display='xrandr --output HDMI-1 --auto
xrandr --output eDP-1 --auto 
xrandr --output eDP-1 --right-of HDMI-1
xrandr --output HDMI-1 --auto
xrandr --output eDP-1 --auto 
xrandr --output eDP-1 --right-of HDMI-1
nitrogen --head=0 --set-zoom-fill $HOME/Pictures/Wallpapers/ocean-with-cloud.png
nitrogen --head=1 --set-zoom-fill $HOME/Pictures/Wallpapers/interstellar-wallpaper.png'

alias update-mirrors='rate-mirrors --protocol https --entry-country india --allow-root arch | sudo tee /etc/pacman.d/mirrorlist'
```

## Environment Variables

Some environment variables set in the `.zshrc` file include:

```sh
export PATH="$HOME/flutter/bin:$PATH"
export PATH="$HOME/Downloads/android-studio/bin:$PATH"
export PATH="$PATH:$HOME/Android/Sdk/platform-tools"
export PATH="$PATH:$HOME/Android/Sdk/cmdline-tools/latest/bin" 
export PATH="$PATH:$HOME/Android/Sdk/build-tools/34.0.0"
export PATH="$PATH:$HOME/Android/Sdk/emulator/bin64"
export PATH="$PATH:$HOME/.pub-cache/bin"

# Export nvm into path
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
```

## Custom Configurations

Additional custom configurations:

- **X Window System start:** Starts `xinit` if no graphical environment is running and on the first virtual terminal.
- **History settings:** Configures a large history file with substantial size limits.
- **Starship prompt:** Initializes the [Starship](https://starship.rs/) prompt for a customizable and fast shell prompt.

```sh
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]
then
    startx
fi

eval "$(starship init zsh)"
```

For more details, you can view the full `.zshrc` file [here](https://github.com/swgtds/zsh/blob/main/zshrc).

Feel free to customize the `.zshrc` file to suit your needs!

---


