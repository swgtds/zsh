HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=5000


alias ls='exa'
alias ll='exa -lh'
alias lh='exa -lah'
alias lt='exa -T'
alias lf='lfrun'
alias rcp='rsync --recursive --progress'
alias pbat='bat -p'
alias aria2c='aria2c -d $HOME/Downloads'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"
