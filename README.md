# dotfiles

Some simple dotfiles for tweaks I use. Mostly used with MacOS. I recently switched from zsh to fish and started a fresh NeoVim setup,
so these are very much WIP and will be added to as I tweak things.

## Usage

Use this repo with gnu stow. If you don't have it yet,

```bash
brew install stow
```

Then, when you want to import a certain dotfile on your system

```bash
stow fish
```

And they'll be symlinked to the correct place.

There might be some issues with some settings, so use at your own risk.

If you mess something up, the symlink can be easily deleted with

```bash
stow -D fish
```

## fish requirements

To get fish to look like on my system, you need to add nerd fonts and add an iTerm2 theme.

To install fonts

```bash
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
set -g theme_nerd_fonts yes
```

The font I use is **Hack**. To get everything to look a little nicer, download the ayu theme for iTerm2.

## NeoVim requirements

You'll need `vim-plug` for the plugins. For installation instructions, look [here](https://github.com/junegunn/vim-plug).
