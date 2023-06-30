#!/bin/sh
export EDITOR=nvim
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

alias vi='nvim'
alias la='ls -lahG'
alias conf='vi ~/.config/fish/config.fish'
alias sshconf='vi ~/.ssh/config'
alias viconf='vi ~/.config/nvim/init.vim'
alias maus='defaults write .GlobalPreferences com.apple.mouse.scaling -1'
alias speedtest='networkQuality -v'

