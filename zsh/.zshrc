# powerlvl10k and zsh default

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions docker docker-compose tmux asdf node terraform kubectl)

# Source files
source $ZSH/oh-my-zsh.sh
source $HOME/.alias
source ~/.local.zshrc 

# Default editor for ssh
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# PATH vars
export PATH="$HOME/bin:$PATH"

export FZF_DEFAULT_OPTS="--bind 'ctrl-y:execute-silent(echo -n {} | pbcopy)'"

setopt share_history
setopt hist_ignore_dups
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# To customize prompt, run `p10k configure` or edit ~/dotfiles/.p10k.zsh.
[[ ! -f ~/dotfiles/.p10k.zsh ]] || source ~/dotfiles/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/catppuccin-mocha.zsh.
[[ ! -f ~/.config/zsh/catppuccin-mocha.zsh ]] || source ~/.config/zsh/catppuccin-mocha.zsh

# To customize prompt, run `p10k configure` or edit ~/dotfiles/.config/zsh/catppuccin-mocha.zsh.
[[ ! -f ~/dotfiles/.config/zsh/catppuccin-mocha.zsh ]] || source ~/dotfiles/.config/zsh/catppuccin-mocha.zsh

export PATH="/run/current-system/sw/bin:$PATH"

# History control
HISTSIZE=10000           # Number of lines kept in memory
SAVEHIST=10000           # Number of lines saved to ~/.zsh_history
HISTFILE=~/.zsh_history  # Where history is saved

setopt hist_ignore_dups         # Don't record duplicate commands
setopt hist_ignore_all_dups     # Remove older duplicates
setopt hist_reduce_blanks       # Remove superfluous blanks before recording
setopt hist_verify              # Don't execute immediately after history expansion
setopt inc_append_history       # Immediately append to the history file, don't overwrite
setopt share_history            # Share history between all sessions
setopt extended_history         # Save timestamp and duration for each command
setopt no_hist_beep             # Don't beep on history search
setopt hist_save_no_dups        # Don't save duplicates in the history file
setopt hist_find_no_dups        # Don't find duplicates during history search
setopt hist_expire_dups_first   # Expire duplicate entries first when trimming history

