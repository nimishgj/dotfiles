# powerlvl10k and zsh default
eval "$(rbenv init -)"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions docker docker-compose tmux asdf node)

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

export FZF_DEFAULT_OPTS="--bind 'ctrl-y:execute-silent(echo -n {} | pbcopy)'"

conda deactivate

export PATH="$HOME/.asdf/shims:$PATH"

