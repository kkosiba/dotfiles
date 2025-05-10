# Set PATH
export PATH=${HOME}/bin:/usr/local/bin:${HOME}/.local/bin:${HOME}/go/bin:${PATH}

# XDG dir settings
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

# Default software
export TERMINAL="ghostty"
export EDITOR="nvim"
export BROWSER="librewolf"
export FZF_BASE=$(command -v fzf)

# Various configs
export HISTFILE="${XDG_DATA_HOME}/zsh/.zsh-history"
export HISTFILESIZE=100000       # history limit of the file on disk
export HISTSIZE=200000           # current session's history limit
export SAVEHIST=500000           # zsh saves this many lines from the in-memory history list to the history file upon shell exit

# Write the history file in the ":start:elapsed;command" format.
setopt EXTENDED_HISTORY
# Write to the history file immediately, not when the shell exits.
setopt INC_APPEND_HISTORY
# Share history between all sessions.
setopt SHARE_HISTORY
# Expire duplicate entries first when trimming history.
setopt HIST_EXPIRE_DUPS_FIRST
# Don't record an entry that was just recorded again.
setopt HIST_IGNORE_DUPS
# Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_ALL_DUPS
# Do not display a line previously found.
setopt HIST_FIND_NO_DUPS
# Don't record an entry starting with a space.
setopt HIST_IGNORE_SPACE
# Don't write duplicate entries in the history file.
setopt HIST_SAVE_NO_DUPS
# Remove superfluous blanks before recording entry.
setopt HIST_REDUCE_BLANKS

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export ZSH="${ZDOTDIR}/.oh-my-zsh"
export GNUPGHOME="${XDG_CONFIG_HOME}/.gnupg"
export FZF_DEFAULT_OPTS="--layout=reverse"

# Mozilla smooth scrolling/touchpads.
export MOZ_USE_XINPUT2="1"
