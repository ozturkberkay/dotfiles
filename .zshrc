# Greet
fastfetch

# P10K
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Flags
export LANG=en_US.UTF-8
export ARCHFLAGS='-arch arm64'

# Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=()
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 1
zstyle ':omz:update' verbosity default
ENABLE_CORRECTION=true
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
setopt NO_NOMATCH
unsetopt correct
unsetopt correct_all

# Terminal
touch ~/.hushlogin

# Path
export PATH="/opt/homebrew/bin:${PATH}"

# Projects
export PROJECTS="${HOME}/projects"

# Projects: Sumscribe
source "${PROJECTS}/sumscribe/src/sh/sumscribe/includes.sh"

# AWS
export AWS_REGION="us-east-1"
export AWS_DEFAULT_REGION="us-east-1"
export AWS_DEFAULT_PROFILE="default"

# Aliases
source $HOME/.aliases

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Claude
export DISABLE_AUTOUPDATER=false
export FORCE_AUTOUPDATE_PLUGINS=true
export MAX_THINKING_TOKENS=63999

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
