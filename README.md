# My personal dot files config

## Take a Backup of existing config
```
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.config/alias ~/.config/alias.bak
mv ~/.config/scripts ~/.config/scripts.bak
mv ~/.config/tmux ~/.config/tmux.bak
```

## To use this

```
git clone https://github.com/nimishgj/dotfiles ~/dotfiles-temp
cp -r ~/dotfiles-temp/* ~/.config/
rm -rf ~/dotfiles-temp

```

## Next steps
```
chmod +x ~/.config/scripts/init
```

```
cd ~/.config
```
```
./scripts/init
```
