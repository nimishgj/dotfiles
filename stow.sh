#!/usr/bin/env bash

mkdir -v -p ~/.config
mkdir -v -p ~/bin
mkdir -v -p ~/.config/{tmux,ghostty,nvim}

stow --adopt -v -R -t  ~/.config/tmux tmux
stow --adopt -v -R -t  ~/.config/ghostty ghostty
stow --adopt -v -R -t  ~/.config/nvim nvim
stow --adopt -v -R -t  ~ vim
stow --adopt -v -R -t  ~ git
stow --adopt -v -R -t  ~/bin bin
stow --adopt -v -R -t  ~/.config tmi
stow --adopt -v -R -t  ~ qutebrowser
stow --adopt -v -R -t  ~ asdf
stow --adopt -v -R -t  ~ brew
stow --adopt -v -R -t  ~ zsh
stow --adopt -v -R -t  ~ skhdrc

