# new for 2026! switched to using native fish configs
set -gx EDITOR nvim
set -gx LANG en_US.UTF-8
set -gx LC_CTYPE en_US.UTF-8
set -gx CLOUDSDK_PYTHON (which python3) # should fix some gcloud issues where it always wants to use system python instead of brew

# fzf settings
# not actually 100% sure where these came from, but they lived in fish_variables
set -gx FZF_DEFAULT_OPTS "--height 40%"
set -gx FZF_LEGACY_KEYBINDINGS 1
set -gx FZF_PREVIEW_DIR_CMD "ls"
set -gx FZF_PREVIEW_FILE_CMD "head -n 10"
set -gx FZF_TMUX_HEIGHT "40%"

# some defaults, remove greeting
set -gx theme_color_scheme base16
set -g fish_greeting ""
fish_add_path "$HOME/.local/bin"

# aliases
alias vi="nvim"
alias la="ls -lahG"
alias conf="vi ~/.config/fish/config.fish"
alias sshconf="vi ~/.ssh/config"
alias viconf="vi ~/.config/nvim/init.vim"
alias k="kubectl"

# macos specific
if test (uname) = "Darwin"
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin
    fish_add_path "/Applications/Ghostty.app/Contents/MacOS"

    alias maus="defaults write .GlobalPreferences com.apple.mouse.scaling -1" # probably should remove this since it's an exposed setting now
    alias speedtest="networkQuality -v"
end

# device specific configs
if test -f ~/.config/fish/config_local.fish
    source ~/.config/fish/config_local.fish
end
