#!/usr/bin/env bash

mkdir -v -p ~/{bin,nix,.config,.oh-my-zsh}
mkdir -v -p ~/.config/{tmux,ghostty,nvim,home-manager,skhd,yabai}

# install zsh
sudo apt install zsh
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install p10klevel
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"


# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# isntall 

# isntall oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting


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
stow --adopt -v -R -t  ~/.config/skhd skhd
stow --adopt -v -R -t  ~/.config/yabai yabai
stow --adopt -v -R -t  ~/nix nix
stow --adopt -v -R -t  ~ hammerspoon


reload
