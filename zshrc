# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


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

#alias for yazi-terminal file manager
alias yy='yazi'

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


source '/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.zsh'
source '/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh'
#source '/usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.zsh'

#export PATH="$HOME/flutter/bin:$PATH"
#export PATH="$HOME/Downloads/android-studio/bin:$PATH"
#export PATH="$PATH:$HOME/Android/Sdk/platform-tools"
#export PATH="$PATH:$HOME/Android/Sdk/cmdline-tools/latest/bin" 
#export PATH="$PATH:$HOME/Android/Sdk/build-tools/34.0.0"
#export PATH="$PATH:$HOME/Android/Sdk/emulator/bin64"
#export PATH="$PATH:$HOME/.pub-cache/bin"

#export nvm into path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

eval "$(starship init zsh)" 
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
