#export PATH=$HOME/bin:/usr/local/bin:$PATH

#if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]
#then
#	startx
#fi

HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000


alias ls='exa'
alias ll='exa -lh'
alias lh='exa -lah'
alias lt='exa -T'
alias rcp='rsync --recursive --progress'
alias aria2c='aria2c -d $HOME/Downloads'

# Set display 1(Laptop)
alias display-1='xrandr --output HDMI-1 --off
xrandr --output eDP-1 --auto
nitrogen --head=0 --set-zoom-fill $HOME/Pictures/Wallpapers/ocean-with-cloud.png'

# Set display 2
alias display-2='xrandr --output eDP-1 --off
xrandr --output HDMI-1 --auto
nitrogen --set-zoom-fill $HOME/Pictures/Wallpapers/ocean-with-cloud.png'

#Set Dual display
alias dual-display='xrandr --output HDMI-1 --auto
xrandr --output eDP-1 --auto 
xrandr --output eDP-1 --right-of HDMI-1
xrandr --output HDMI-1 --auto
xrandr --output eDP-1 --auto 
xrandr --output eDP-1 --right-of HDMI-1
nitrogen --head=0 --set-zoom-fill $HOME/Pictures/Wallpapers/ocean-with-cloud.png
nitrogen --head=1 --set-zoom-fill $HOME/Pictures/Wallpapers/interstellar-wallpaper.png'

alias update-mirrors='rate-mirrors --protocol https --entry-country india --allow-root arch | sudo tee /etc/pacman.d/mirrorlist'


source '/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
source '/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh'

export PATH="$HOME/flutter/bin:$PATH"
export PATH="$HOME/Downloads/android-studio/bin:$PATH"
export PATH="$PATH:$HOME/Android/Sdk/platform-tools"
export PATH="$PATH:$HOME/Android/Sdk/cmdline-tools/latest/bin" 
export PATH="$PATH:$HOME/Android/Sdk/build-tools/34.0.0"
export PATH="$PATH:$HOME/Android/Sdk/emulator/bin64"
export PATH="$PATH:$HOME/.pub-cache/bin"

eval "$(starship init zsh)" 

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
