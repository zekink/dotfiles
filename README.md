# dotfiles

Some simple dotfiles for tweaks I use. Mostly used with MacOS. I recently switched from zsh to fish and started a fresh NeoVim setup,
so these are very much WIP and will be added to as I tweak things.

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

## fish requirements

Add some nice visual flavor to fish using the `bobthefish` theme. This should work nicely out of the box in Wezterm but not necessarily in some other terminals. 

To install fonts

```bash
# i'm currently messing around with a few different fonts, so this is subject to change
brew install brew install font-comic-shanns-mono-nerd-font
set -g theme_nerd_fonts yes # optional, i'm currently not using this
```

## NeoVim requirements

You'll need `vim-plug` for the plugins. For installation instructions, look [here](https://github.com/junegunn/vim-plug).
