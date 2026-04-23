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

The [fzf.fish](https://github.com/PatrickF1/fzf.fish) plugin (Ctrl+R, Ctrl+Alt+F, Ctrl+Alt+H, Ctrl+Alt+S) requires `fzf`, `fd` and `bat`:

```bash
brew install fzf fd bat
```

Note: on Linux (Ubuntu 24.04 at least) `bat` won't work due to some overlap or something, and is instead called with `batcat`. Needs a local alias
or symlink on Linux systems for now.

Recently ditched the `bobthefish` theme I'd used for years as I ran into some weird issues in fish v4, currently test driving `tide` but might still check out others.
Works fine in Ghostty at least, but without nerd fonts it's a bit broken. To enable nerd font icons:

```bash
brew install font-comic-shanns-mono-nerd-font # or whatever, but this font seems to have stuck for a while already

# on ubuntu this seems to be the way:
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/ComicShannsMono/ComicShannsMonoNerdFontMono-Regular.otf
fc-cache -fv
```

Probably should set a theme for fish after these too with `fish_config`, not version controlling that stuff for now or maybe ever.

## NeoVim requirements

You'll need `vim-plug` for the plugins. For installation instructions, look [here](https://github.com/junegunn/vim-plug).
