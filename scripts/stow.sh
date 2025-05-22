#!/usr/bin/env bash

mkdir -v -p ~/.config
mkdir -v -p ~/bin

stow --adopt -v -R -t  ~/.config/ tmux
stow --adopt -v -R -t  ~/.config/ ghostty
stow --adopt -v -R -t  ~/.config/ nvim
stow --adopt -v -R -t  ~ vim
stow --adopt -v -R -t  ~ git
stow --adopt -v -R -t  ~/bin bin
stow --adopt -v -R -t  ~/.config tmi
stow --adopt -v -R -t  ~ qutebrowser
stow --adopt -v -R -t  ~ asdf
stow --adopt -v -R -t  ~ brew
stow --adopt -v -R -t  ~ zsh

chmod +x defaults/run.sh
./defaults/run.sh
