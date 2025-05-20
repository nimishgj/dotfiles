# My personal dot files config

# Requirements
- Stow installed
- Git installed

## To use this

```
git clone https://github.com/nimishgj/dotfiles ~/dotfiles
cd ~/dotfiles
stow --adopt .
```
To enable quitting of finder 
```shell
defaults write com.apple.finder QuitMenuItem -bool true
killall Finder
```

To dump brewfile
```
brew bundle dump --describe --force
```
