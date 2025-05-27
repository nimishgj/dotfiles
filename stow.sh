#!/usr/bin/env bash

mkdir -v -p ~/{bin,nix,.config,.oh-my-zsh}
mkdir -v -p ~/.config/{tmux,ghostty,nvim,home-manager}

stow --adopt -v -R -t  ~/.config/tmux tmux
stow --adopt -v -R -t  ~/.config/ghostty ghostty
stow --adopt -v -R -t  ~/.config/nvim nvim
stow --adopt -v -R -t  ~/.config/home-manager home-manager
stow --adopt -v -R -t  ~ vim
stow --adopt -v -R -t  ~ git
stow --adopt -v -R -t  ~/bin bin
stow --adopt -v -R -t  ~/.config tmi
stow --adopt -v -R -t  ~ qutebrowser
stow --adopt -v -R -t  ~ asdf
stow --adopt -v -R -t  ~ brew
stow --adopt -v -R -t  ~ zsh
stow --adopt -v -R -t  ~ skhdrc
stow --adopt -v -R -t  ~/nix nix
stow --adopt -v -R -t  ~ hammerspoon
