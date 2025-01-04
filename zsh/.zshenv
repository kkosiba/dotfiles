# Set PATH
export PATH=${HOME}/bin:/usr/local/bin:${HOME}/.local/bin:${HOME}/go/bin:${PATH}

# XDG dir settings
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

# Default software
export TERMINAL="kitty"
export EDITOR="nvim"
export BROWSER="librewolf"
export FZF_BASE=$(command -v fzf)

# Various configs
export HISTFILE="${XDG_DATA_HOME}/zsh/.zsh-history"
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export ZSH="${ZDOTDIR}/.oh-my-zsh"
export GNUPGHOME="${XDG_CONFIG_HOME}/.gnupg"
export FZF_DEFAULT_OPTS="--layout=reverse"

# Mozilla smooth scrolling/touchpads.
export MOZ_USE_XINPUT2="1"
