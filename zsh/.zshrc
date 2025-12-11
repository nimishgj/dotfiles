# powerlvl10k and zsh default
eval "$(rbenv init -)"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions docker docker-compose tmux asdf node terraform kubectl)

# Source files
source $ZSH/oh-my-zsh.sh
source $HOME/.alias

# Default editor for ssh
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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

eval "$(~/.local/bin/mise activate)"

# PATH vars
export PATH="$HOME/.rbenv/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export PATH=/bin:/bin:/Users/nimishgj/.local/share/mise/installs/ruby/3.3.6/bin:/Users/nimishgj/.rbenv/shims:/Users/nimishgj/.rbenv/bin:/opt/local/bin:/opt/local/sbin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Users/nimishgj/.local/bin:/opt/anaconda3/bin:/opt/anaconda3/condabin:/Users/nimishgj/.rbenv/shims:/Users/nimishgj/.rbenv/bin:/opt/local/bin:/opt/local/sbin:/Applications/iTerm.app/Contents/Resources/utilities:/Users/nimishgj/Library/Application 
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export GOROOT="$(brew --prefix go)/libexec"
export PATH="/Users/nimishgj/.codeium/windsurf/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH=$PATH:/Users/nimishgj/.cargo/bin
export PATH="$PATH:/Users/nimishgj/.config/jetbrains"

export FZF_DEFAULT_OPTS="--bind 'ctrl-y:execute-silent(echo -n {} | pbcopy)'"

conda deactivate

export PATH="$HOME/.asdf/shims:$PATH"
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
eval $(thefuck --alias)

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

export PATH="/opt/homebrew/opt/php@8.0/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.0/sbin:$PATH"
export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"
set rtp+=/opt/homebrew/opt/fzf
export KUBECONFIG=~/.kube/office-config
        [[ -s /Users/nimishgj/.autojump/etc/profile.d/autojump.sh ]] && source /Users/nimishgj/.autojump/etc/profile.d/autojump.sh

export PATH="/opt/homebrew/opt/erlang@27/bin:$PATH"

# Added by Antigravity
export PATH="/Users/nimishgj/.antigravity/antigravity/bin:$PATH"

