# dotfiles

Some simple dotfiles for tweaks I use. Mostly used with MacOS. Recently updated in 2026 since omf seemed to be pretty dead, and I cleaned up a bunch
of trash that was a result of me being very new to fish still.

Upcoming, probably:
- New neovim configs
- Switching from stow to chezmoi

## Usage

Use this repo with gnu stow. If you don't have it yet,

```bash
brew install stow
```

Clone this repo to your home folder. Then, when/if you want to import a certain dotfile on your system,
run this inside the folder

```bash
cd ~/dotfiles/
stow fish
```

And they'll be symlinked to the correct place.

There might be some issues with some settings, so use at your own risk.

If you mess something up, the symlink can be easily deleted with

```bash
stow -D fish
```

## fish setup

Plugins are managed with [Fisher](https://github.com/jorgebucaran/fisher). Install Fisher first, then run `fisher update` to install all plugins listed in `fish_plugins`.

```bash
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher update
```

The [fzf.fish](https://github.com/PatrickF1/fzf.fish) plugin (Ctrl+R, Ctrl+Alt+F, Ctrl+Alt+H, Ctrl+Alt+S) requires `fzf` and `fd`:

```bash
brew install fzf fd
```

Still using the same `bobthefish` theme that I set several years ago, might change at some point. Works out of the box in Wezterm (which I used to use)
and Ghostty (which I use now) but maybe not some other terminals. To enable nerd font icons:

```bash
# i'm currently messing around with a few different fonts, so this is subject to change
brew install font-comic-shanns-mono-nerd-font
# then uncomment `set -g theme_nerd_fonts yes` in conf.d/bobthefish.fish
# or not, i'm currently not using this because it felt too noisy
```

## NeoVim requirements

You'll need `vim-plug` for the plugins. For installation instructions, look [here](https://github.com/junegunn/vim-plug).
