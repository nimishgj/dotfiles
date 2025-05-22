# My personal dot files config

# Requirements
- Stow installed
- Git installed

## To use this

```
git clone --recurse-submodules https://github.com/nimishgj/dotfiles ~/dotfiles
cd ~/dotfiles
chmod +x scripts/stow.sh 
./scripts/stow.sh
```

To dump brewfile
```
brew bundle dump --describe --force
```
