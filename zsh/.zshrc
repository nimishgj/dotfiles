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

<<<<<<< HEAD

# PATH vars
=======
# Conda setup
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup


# PATH vars
export PATH="$HOME/.rbenv/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export GOROOT="$(brew --prefix go)/libexec"
export PATH="/Users/nimishgj/.codeium/windsurf/bin:$PATH"
>>>>>>> 6387d3b (some more configs)
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

set rtp+=/opt/homebrew/opt/fzf
[[ -s /Users/nimishgj/.autojump/etc/profile.d/autojump.sh ]] && source /Users/nimishgj/.autojump/etc/profile.d/autojump.sh



[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
export PATH="$HOME/.local/bin:$PATH"
