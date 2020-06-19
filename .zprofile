# Exports
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.local/bin/dwmblocks_scripts:$PATH
export EDITOR="vim"
export READER="zathura"
export FILE_MANAGER="ranger"
export ZSH="/home/kamil/.oh-my-zsh" # Path to your oh-my-zsh installation.
export FZF_BASE=/usr/bin/fzf # Set fzf installation directory path

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

if [[ -n "$DESKTOP_SESSION" ]]; then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

# Aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias docker="sudo docker "
